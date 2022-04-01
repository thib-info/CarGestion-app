-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 16 mai 2018 à 18:58
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projectcsharp`
--
CREATE DATABASE IF NOT EXISTS `projectcsharp` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `projectcsharp`;

-- --------------------------------------------------------

--
-- Structure de la table `historic`
--

DROP TABLE IF EXISTS `historic`;
CREATE TABLE IF NOT EXISTS `historic` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) NOT NULL,
  `startdaynumber` int(64) NOT NULL,
  `starthalfday` int(64) NOT NULL,
  `enddaynumber` int(64) NOT NULL,
  `endhalfday` int(64) NOT NULL,
  `reason` varchar(64) NOT NULL,
  `voiture` int(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jour`
--

DROP TABLE IF EXISTS `jour`;
CREATE TABLE IF NOT EXISTS `jour` (
  `daynumber` int(64) NOT NULL,
  `usermorning1` varchar(64) NOT NULL,
  `userafternoon1` varchar(64) NOT NULL,
  `reasonmorning1` varchar(64) NOT NULL,
  `reasonafternoon1` varchar(64) NOT NULL,
  `usermorning2` varchar(64) NOT NULL,
  `userafternoon2` varchar(64) NOT NULL,
  `reasonmorning2` varchar(64) NOT NULL,
  `reasonafternoon2` varchar(64) NOT NULL,
  `usermorning3` varchar(64) NOT NULL,
  `userafternoon3` varchar(64) NOT NULL,
  `reasonmorning3` varchar(64) NOT NULL,
  `reasonafternoon3` varchar(64) NOT NULL,
  `usermorning4` varchar(64) NOT NULL,
  `userafternoon4` varchar(64) NOT NULL,
  `reasonmorning4` varchar(64) NOT NULL,
  `reasonafternoon4` varchar(64) NOT NULL,
  PRIMARY KEY (`daynumber`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `user` varchar(64) NOT NULL,
  `startdaynumber` int(64) NOT NULL,
  `starthalfday` int(64) NOT NULL,
  `enddaynumber` int(64) NOT NULL,
  `endhalfday` int(64) NOT NULL,
  `timecode` int(64) NOT NULL,
  `reason` varchar(64) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `voiture` int(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `authorisation` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `authorisation`) VALUES
(1, 'Utilisateur', 'NULL', 'User'),
(2, 'Administrateur', 'super', 'Admin'),
(3, 'A', 'NULL', 'Admin'),
(4, 'U', 'NULL', 'User');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
