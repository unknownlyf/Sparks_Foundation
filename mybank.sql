-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 08:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybank`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '100101', 'MUMBAI'),
(2, '100102', 'PUNE');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackId`, `message`, `userId`, `date`) VALUES
(1, 'This is testing message to admin or manager by fk', 1, '2023-12-15 04:30:48'),
(3, 'This is testing message to admin or manager by fk', 2, '2023-12-15 04:30:48'),
(4, 'this is help card for admin', 1, '2023-12-17 06:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'cashier@cashier.com', 'cashier', 'cashier', '2023-12-15 04:36:27'),
(2, 'manager@manager.com', 'manager', 'manager', '2023-12-15 04:36:27'),
(3, 'sadfas@gmail.com', 'sdfas', 'type', '2023-12-16 07:13:12'),
(4, 'fkgeo@gmail.com', 'asdfsa', 'type', '2023-12-16 07:13:18'),
(6, 'cashier2@cashier.com', 'cashier2', 'cashier', '2023-12-16 07:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '1', 'Dear Customer! <br> Our privacy policy is changed for account information get new prospectus from your nearest branch', '2023-12-14 13:11:46'),
(6, '2', 'Dear Satyam,<br>\r\nOur privacy policy has been changed please visit nearest <kbd> BRANCH </kbd> branch for new prospectus.', '2023-12-16 06:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `otheraccounts`
--

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otheraccounts`
--

INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '12001122', 'SBI BANK', 'Aniket Jhanbhare', '36800', '2023-12-14 11:55:07'),
(2, '12001123', 'YES BANK', 'Sagar Aher', '71000', '2023-12-14 11:55:07'),
(3, '12001124', 'HDFC BANK', 'Akash Abhuj', '71000', '2023-12-14 11:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `beneId` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `balance`, `beneId`, `other`, `userId`, `date`) VALUES
(4, 'transfer', '', '200', '', '', '12001122', 1, '2023-12-14 12:33:40'),
(5, 'transfer', '', '200', '', '', '10054777', 1, '2023-12-14 12:56:48'),
(6, 'transfer', '', '333', '', '', '10054777', 1, '2023-12-14 12:57:20'),
(18, 'transfer', '', '467', '', '', '12001122', 1, '2023-12-17 06:44:48'),
(29, 'transfer', '', '800', '', '', '12001122', 1, '2023-05-21 17:55:25'),
(30, 'transfer', '', '1000', '', '', '12001122', 1, '2023-05-21 17:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `cnic` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `cnic`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'some@gmail.com', 'some', 'Harish Dasarvar', '4000', '3210375555426', '03356910260', 'Maharastra', 'Samarth College of Engineering and Technology', 'Programmer', '1005469', '1', 'Current', '2023-12-14 05:50:06'),
(2, 'some2@gmail.com', 'some2', 'Bali Rahtod', '16000', '3210375555343', '03356910260', 'Maharastra', 'Samarth College of Engineering and Technology', 'Programmer', '10054777', '1', 'Saving', '2023-12-14 04:50:06'),
(6, 'realx4rd@gmail.com', 'Maharastra', 'Pavan Jadhav', '234234', '3240338834902', '03356910260', 'Maharastra', 'Samarth College of Engineering and Technology', 'Govt. job', '1513410739', '1', 'saving', '2023-12-16 07:52:40'),
(7, 'realx4rd@gmail.com', 'safsadf', 'Fayyaz Khan', '12121', '3240338834902', '03356910260', 'Maharastra', 'Samarth College of Engineering and Technology', 'Govt. job', '1513410837', '1', 'current', '2023-12-16 07:54:18'),
(8, 'dalsknal@gmail.com', '1234', 'Gauraw Tonape', '50000', '45', '08830026447', 'Nagar', 'fasdjfklsjf', 'Goverment', '1684691251', '2', 'saving', '2023-05-21 17:48:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
