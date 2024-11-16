// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import { Script, console } from "forge-std/Script.sol";
import { Heart } from "../src/Heart.sol";

contract DeployHeart is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        Heart heart = new Heart();
        console.log("Heart deployed at:", address(heart));
        vm.stopBroadcast();
    }
}