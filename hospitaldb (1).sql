-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 20, 2020 at 07:56 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hospitaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `channeling`
--

CREATE TABLE IF NOT EXISTS `channeling` (
  `channelID` int(11) NOT NULL AUTO_INCREMENT,
  `patientName` varchar(50) DEFAULT NULL,
  `patientEmail` varchar(40) DEFAULT NULL,
  `mobileNo` varchar(15) DEFAULT NULL,
  `channelingDate` date DEFAULT NULL,
  `doctorID` int(11) DEFAULT NULL,
  `gender` varchar(15) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `channelingNo` int(11) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `doctorName` varchar(100) NOT NULL,
  PRIMARY KEY (`channelID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `channeling`
--

INSERT INTO `channeling` (`channelID`, `patientName`, `patientEmail`, `mobileNo`, `channelingDate`, `doctorID`, `gender`, `nic`, `channelingNo`, `age`, `doctorName`) VALUES
(1, 'a.b.c.dkuma', 'abcd@gmail.com', '102549866', '2018-11-30', 3, '', '', 0, NULL, ''),
(2, 'a.b.c.dkuma', 'abcd@gmail.com', '102549866', '2018-11-30', 1, '', '', 0, NULL, ''),
(3, 'a.b.c.dkuma', 'abcd@gmail.com', '102549866', '2018-11-30', 2, '', '', 0, NULL, ''),
(4, 'a.b.c.dkuma', 'abcd@gmail.com', '102549866', '2018-11-30', 1, '', '', 0, NULL, ''),
(5, 'a.b.c.dkuma', 'abcd@gmail.com', '102549866', '2018-12-05', 1, '', '', 0, NULL, ''),
(6, 'a.b.c.dkuma', 'abcd@gmail.com', '102549866', '2018-12-05', 1, '', '', 0, NULL, ''),
(7, 'a.b.c.dkuma', 'abcd@gmail.com', '102549866', '2018-12-05', 1, '', '', 1, NULL, ''),
(8, 'vithu', 'vithu@gmail.com', '0779919532', '2018-12-03', 1, 'female', '968022326v', 20, '22', ''),
(9, 'abi', 'abi@gmail.com', '0769006515', '2018-12-03', 2, 'male', '987654343v', 21, '23', ''),
(10, 'mala', 'mala@gmail.com', '0876545678', '2018-12-03', 3, 'female', '965644323v', 22, '32', ''),
(11, 'was', 'wads@gmail', '0796537678', '2018-12-03', NULL, 'Male', '7837564673', NULL, '12', 'null'),
(12, 'null', 'null', 'null', '2018-12-03', NULL, 'null', 'null', NULL, 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `doctorID` int(11) NOT NULL AUTO_INCREMENT,
  `doctorName` varchar(50) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `specialization` varchar(50) DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `availbleDate` varchar(30) DEFAULT NULL,
  `availbleTime` varchar(20) DEFAULT NULL,
  `doctorCharge` double NOT NULL,
  PRIMARY KEY (`doctorID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorID`, `doctorName`, `username`, `specialization`, `details`, `mobile`, `email`, `gender`, `availbleDate`, `availbleTime`, `doctorCharge`) VALUES
(1, 'K.M.Kumara', 'nimo', '', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 'samadini', 'sama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0),
(4, 'thuka', 'rgrdv', 'CARDIOLOGIST', 'etfgtr', '43663462', 'fdgtdfgf', 'gtrgtr', '9/8/2011', '7.00', 800);

-- --------------------------------------------------------

--
-- Table structure for table `lab_report`
--

CREATE TABLE IF NOT EXISTS `lab_report` (
  `lab_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `file` longblob NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`lab_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lab_report`
--

INSERT INTO `lab_report` (`lab_id`, `firstname`, `lastname`, `file`, `patient_id`, `bill_no`, `path`) VALUES
(1, 'thano', 'loganathan', 0x433a55736572736172636861446f63756d656e74734e65744265616e7350726f6a6563747370726f6a65637466696e616c776562696d61676573393535333532363435762e6a7067, '955352645v', 'B001', '955352645v'),
(2, 'null', 'null', 0x6e756c6c, 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `loginID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `usercategory` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`loginID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginID`, `username`, `password`, `usercategory`) VALUES
(1, 'nidu', '123', 'admin'),
(2, 'nimo', '1234', 'doctor'),
(3, 'piumi', '1234', 'receptionist'),
(4, 'navi', '1234', 'labAssi'),
(5, 'madu', '123', 'doctor'),
(6, 'sama', '123', 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `patientID` int(11) NOT NULL AUTO_INCREMENT,
  `patientName` varchar(50) DEFAULT NULL,
  `pPhoneNo` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `prescription` varchar(150) DEFAULT NULL,
  `dateTime` date DEFAULT NULL,
  `other` varchar(100) DEFAULT NULL,
  `gender` varchar(15) NOT NULL,
  `time` time DEFAULT NULL,
  `pNIC` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`patientID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientID`, `patientName`, `pPhoneNo`, `age`, `prescription`, `dateTime`, `other`, `gender`, `time`, `pNIC`) VALUES
(1, 'H.A.N.Nidarshi', '0702154898', 25, '      weyr7wy                       \r\n                          ', '2018-11-30', '   ye838                          \r\n                          ', '', '00:00:00', NULL),
(2, 'H.M.S.V.Herath', '077555554', 27, '                             \r\n                          ', '2018-11-30', '                             \r\n                          ', '', '00:00:00', NULL),
(4, 'H.A.N.Nidarshani', '0785222333', 24, 'ksjdjdsifji,fnwe,nfjrw,mfiwek\r\n                          ', '2018-11-06', '                             \r\n                          ', '', '00:00:00', NULL),
(5, 'A.P.K.Kumari', '0785222333', 24, '2abcd,abcud,hhe,nde,nded', '2018-11-30', NULL, '', '00:00:00', NULL),
(6, 'A.P.K.Kumari', '0785222333', 24, 'abcd,def,lkj                             \r\n                          ', '2018-11-30', '                             \r\n                          ', '', '00:00:00', NULL),
(7, 'A.P.K.Kumari', '0785222333', 24, '3', '2018-11-30', NULL, '', '00:00:00', NULL),
(8, 'A.P.K.Kumari', '0785222333', 24, NULL, '2018-11-30', NULL, '', '00:00:00', NULL),
(9, 'A.P.K.Kumari', '0785222333', 24, NULL, '2018-11-30', NULL, '', '00:00:00', NULL),
(10, 'a.b.c.dkuma', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL),
(11, 'vithu', NULL, NULL, NULL, NULL, NULL, 'female', NULL, NULL),
(12, 'vithu', NULL, NULL, NULL, NULL, NULL, 'female', NULL, NULL),
(13, 'abi', '0769006515', 23, NULL, NULL, NULL, 'male', NULL, '987654343v'),
(14, 'abi', '0769006515', 23, NULL, NULL, NULL, 'male', NULL, '987654343v');

-- --------------------------------------------------------

--
-- Table structure for table `staffmembers`
--

CREATE TABLE IF NOT EXISTS `staffmembers` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `usertype` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `staffmembers`
--

