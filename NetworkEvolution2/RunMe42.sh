#!/bin/bash


echo 'starting simulations'


R CMD BATCH ParameterSpace.R
cd ./00-SummaryOutput/

INPUT_FILE=../ParamSpace.txt



# Compile the code if not present already: 

qsub ../RsubMake.pbs
sleep 5

while read line
    do
    set 'echo $line'
    F1=$(echo $line | awk '{print substr($1, index($24, $24))}')
    F2=$(echo $line | awk '{print substr($2, index($24, $24))}')
    F3=$(echo $line | awk '{print substr($3, index($24, $24))}')
    F4=$(echo $line | awk '{print substr($4, index($24, $24))}')
    F5=$(echo $line | awk '{print substr($5, index($24, $24))}')
    F6=$(echo $line | awk '{print substr($6, index($24, $24))}')
    F7=$(echo $line | awk '{print substr($7, index($24, $24))}')
    F8=$(echo $line | awk '{print substr($8, index($24, $24))}')   
    F9=$(echo $line | awk '{print substr($9, index($24, $24))}')
    F10=$(echo $line | awk '{print substr($10, index($24, $24))}')
    F11=$(echo $line | awk '{print substr($11, index($24, $24))}')
    F12=$(echo $line | awk '{print substr($12, index($24, $24))}')
    F13=$(echo $line | awk '{print substr($13, index($24, $24))}')
    F14=$(echo $line | awk '{print substr($14, index($24, $24))}')
    F15=$(echo $line | awk '{print substr($15, index($24, $24))}')
    F16=$(echo $line | awk '{print substr($16, index($24, $24))}')
    F17=$(echo $line | awk '{print substr($17, index($24, $24))}')   
    F18=$(echo $line | awk '{print substr($18, index($24, $24))}')
    F19=$(echo $line | awk '{print substr($19, index($24, $24))}')
    F20=$(echo $line | awk '{print substr($20, index($24, $24))}')
    F21=$(echo $line | awk '{print substr($21, index($24, $24))}')
    F22=$(echo $line | awk '{print substr($22, index($24, $24))}')
    F23=$(echo $line | awk '{print substr($23, index($24, $24))}')
    F24=$(echo $line | awk '{print substr($24, index($24, $24))}')

     qsub -v npops=$F1,nind=$F2,gen=$F3,mu=$F4,mu_var=$F5,reg_mu=$F6,m_rate=$F7,x_start=$F8,y_start=$F9,x_opt=$F10,y_opt=$F11,start_network=$F12,sel_var=$F13,sel_covar=$F14,rec=$F15,theta=$F16,gamma=$F17,model=$F18,start_deviation=$F19,selection_mode=$F20,output_freq=$F21,output_pheno_file=$F23,output_fitness_file=$F24,rep=$F22 ../Rsub.pbs

   # echo  "qsub -v npops="$F1",nind="$F2",gen="$F3",mu="$F4",mu_var="$F5",reg_mu="$F6",m_rate="$F7",x_start="$F8",y_start="$F9",x_opt="$F10",y_opt="$F11",start_network="$F12",sel_var="$F13",sel_covar="$F14",rec="$F15",theta="$F16",gamma="$F17",model="$F18",start_deviation="$F19",selection_mode="$F20",output_freq="$F21",output_pheno_file="$F23",output_fitness_file="$F24",rep="$F22 

done < $INPUT_FILE

# Email when finished:











