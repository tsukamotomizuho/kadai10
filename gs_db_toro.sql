-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017 年 10 朁E25 日 15:09
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_db_toro`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `player_table`
--

CREATE TABLE IF NOT EXISTS `player_table` (
`id` int(12) NOT NULL,
  `player_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `player_table`
--

INSERT INTO `player_table` (`id`, `player_name`, `password`, `gender`, `birthday`, `indate`) VALUES
(1, 'test', '$2y$10$3jkBNIPnKUyykdSq6h.coeyhj/fSpHGJuR7RJk6Y7mOJrFlbCSvGS', '女', '2017-10-26', '2017-10-22 20:43:40'),
(2, 'test2', '$2y$10$F7Xvvz3I2.QPBtQZx9gew.87gF0RH//J1NH6mFhon63.EEFwrV0Cq', '男', '2017-10-13', '2017-10-22 20:45:55'),
(3, 'test3', '$2y$10$VWwZ.xQYsTc/9A8XyPByhuoSAR0t5waaAW2PZ1ZmrGgFsm4dEyGFq', '女', '2017-10-12', '2017-10-22 20:51:03'),
(4, 'test4', '$2y$10$UmdF1qv9e0pcLvFMsH4Uae5X3QfdVQ6XqCoR6cKPbmfbZCsadP8uu', '男', '2017-10-03', '2017-10-22 20:52:05'),
(5, 'test5', '$2y$10$j388Ynk3p44rwMzVEaWt.OGK52GHrcA.jhDbeDWWIzm/UBQRlHSCK', '男', '2017-10-25', '2017-10-23 20:08:00'),
(6, 'test6', '$2y$10$O3reHRnXXjf231urTfdhjejnfv9jfLXPTqNo3iAN3b7XNH6iE/nqu', '女', '2017-10-27', '2017-10-24 20:52:51'),
(7, 'test7', '$2y$10$EF3AJZXrLJkRpDdxYuNBaOJLC4InZLidVkRgJczUbs3QgkLbbEGOO', '女', '2017-10-27', '2017-10-25 20:45:46');

-- --------------------------------------------------------

--
-- テーブルの構造 `word_table`
--

CREATE TABLE IF NOT EXISTS `word_table` (
`id` int(12) NOT NULL,
  `player_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `word` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `feel` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `word_table`
--

INSERT INTO `word_table` (`id`, `player_name`, `word`, `type`, `kind`, `feel`) VALUES
(1, 'test7', 'person', 'やまだ', '女', 'スキ'),
(2, 'test7', 'place', 'コロンビア', '遠い', 'キライ'),
(3, 'test7', 'play', 'ゲーム', 'ひとりで', 'スキ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `player_table`
--
ALTER TABLE `player_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `word_table`
--
ALTER TABLE `word_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `player_table`
--
ALTER TABLE `player_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `word_table`
--
ALTER TABLE `word_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
