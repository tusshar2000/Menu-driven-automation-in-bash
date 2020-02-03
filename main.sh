#!/bin/bash
# setting an infinite loop
while :
do
	clear
        # display menu
        echo "		        Machine Name - $(hostname)		"
echo " "
        echo "            ****** LINUX AUTOMATION PROGRAM *******"
echo " "
	echo "------------------------- M A I N - M E N U ------------------------------"
	echo "  1.Open Browser        2.Open LibreOffice Writer   3.Open LibreOFiceCalc  " 
	echo " "
	echo "  4.Open LibreOffice    5.Open About                6.Open System Monitor"
echo " "
	echo "  7.Take Screenshot     8.Open Disks Info           9.Open File Browser"
echo " "
	echo "  10.ImageViewer "
echo " "
	echo "------------------------------------------------------------------------" 
	echo "  11.S H U T D O W N    12.Q U I T S E S S I O N    13.R E B O O T "
	echo "------------------------------------------------------------------------" 
echo " "
	echo "    14.** E X I T **"
echo " "
	read -p "Please Enter A Choice :" choice
case "$choice" in
   1) 
	echo "OPENING  UP  BROWSER" 
	xdg-open https://google.com
	read -p "Press [Enter] key to continue..." readEnterKey
  	 ;;
   2) 	echo "OPENING  UP LIBREWRITER" 
	libreoffice --writer
	read -p "Press [Enter] key to continue..." readEnterKey
	   ;;
   3) 	echo "OPENING  UP  LIBRE-CALCULATOR" 
	libreoffice --calc
	read -p "Press [Enter] key to continue..." readEnterKey
	   ;;
   4)   echo "OPENING  UP  LIBRE-OFFICE"
	libreoffice 
	read -p "Press [Enter] key to continue..." readEnterKey
	;;
   5)   echo "OPENING  UP  CONTROL CENTER/ABOUT"
	gnome-control-center
	read -p "Press [Enter] key to continue..." readEnterKey
	;;
   6)   echo "OPENING  UP SYSTEM MONITOR"
	gnome-system-monitor
	read -p "Press [Enter] key to continue..." readEnterKey
	;;
   7) echo "TAKING FULL SCREENDHOT"
	gnome-screenshot
	read -p "Press [Enter] key to continue..." readEnterKey
	;;
   8) echo "OPENING UP DISKS UTILITY"
	gnome-disks
	read -p "Press [Enter] key to continue..." readEnterKey
	;;
   9) echo "OPENING UP FILE BROWSER"
	nautilus
	read -p "Press [Enter] key to continue..." readEnterKey
	;;
   10) echo "OPENING UP IMAGE VIEWER"
	display
	read -p "Press [Enter] key to continue..." readEnterKey
	;;
   11) echo "PERFORMING A SHUTDOWN IN 1 MINUTE"
	shutdown -h
	;;
   12) echo "EXITING USER SESSION"
	gnome-session-quit
	;;
   13) echo "PERFORMING A REBOOT"
	reboot
	;;
   14)  echo "Bye! $(hostname) "
	exit 0
	;;
   *)
	echo "Error: Invalid option..."	
	read -p "Press [Enter] key to continue..." readEnterKey
	;;
esac
done
