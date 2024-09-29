#!/bin/bash
#SBATCH --job-name=hello_mpi            
#SBATCH --output=hello.txt              
#SBATCH --ntasks=15                    
#SBATCH --nodes=1                       
#SBATCH --cpus-per-task=1               
#SBATCH --time=05:00                  
#SBATCH -p short-28core                

module load gcc-stack                     

mpic++ hello_in_order.cpp -o hello_in_order  


mpirun -np 15 ./hello_in_order
