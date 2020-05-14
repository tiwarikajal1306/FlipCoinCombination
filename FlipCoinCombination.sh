#!/bin/bash -x
declare -A Dictionary

heads=0
tails=0

for ((count=0; count<20; count++))
do
	result=$((RANDOM % 2))
	if [ $result -eq 1 ]
	then
		$((heads++))
	else
		$((tails++))
	fi
done

Dictionary[Head]=$heads
Dictionary[Tail]=$tails

for i in ${!Dictionary[@]}
do
	percentResult=$((${Dictionary[$i]} * 100 / 20))
	echo $i" percentage: "$percentResult
done
