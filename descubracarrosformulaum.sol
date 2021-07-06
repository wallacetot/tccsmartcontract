//SPDX-License-Identifier: MIT
//Author: Wallace Vieira - Trabalho de conclusão de curso de Smart Contract da PUC-SP.

pragma solidity 0.8.6;

contract descubraCarrosFormulaUm {

    struct descubraCarros {
        string marcaCarro;
        string modeloCarro;
        string corCarro;
        uint velocidadeMaxima;
    }

    address public owner;

    descubraCarros[] public carros;

    constructor() {
        owner = msg.sender;
    }

    function registerCarros(
        string memory addMarcaCarro,
        string memory addModeloCarro,
        string memory addCorCarro,
        uint addVelocidadeMaxima 
    ) external returns (bool) {
        require(msg.sender == owner, "Only the owner can register a new car");
        descubraCarros memory novoCarro = descubraCarros(addMarcaCarro, addModeloCarro, addCorCarro, addVelocidadeMaxima);
        carros.push(novoCarro);
        return true;
    }
    
}
