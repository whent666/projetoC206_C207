DROP DATABASE IF EXISTS locadoraDeJogos;
CREATE DATABASE locadoraDeJogos;
USE locadoraDeJogos;

CREATE TABLE cliente(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(30) NOT NULL,
idade INT NOT NULL,
endereco VARCHAR(50) ,
telefone VARCHAR(15) ,
email VARCHAR(30)
);

CREATE TABLE jogo (
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(30) NOT NULL,
desenvolvedor VARCHAR(30) NOT NULL,
dataLancamento VARCHAR(15) NOT NULL,
plataforma VARCHAR(30) NOT NULL,
preco FLOAT ,
alugado BOOLEAN
);

CREATE TABLE alugado(

id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
data_alugado VARCHAR(15) NOT NULL,
data_devolucao VARCHAR(15) NOT NULL,
cliente_id INT NOT NULL ,
jogo_id INT NOT NULL,

CONSTRAINT fk_cliente
FOREIGN KEY (cliente_id)
REFERENCES cliente(id)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT fk_jogo
FOREIGN KEY (jogo_id)
REFERENCES jogo(id)
ON DELETE CASCADE
ON UPDATE CASCADE
);

