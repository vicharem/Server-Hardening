powershell.exe -ExecutionPolicy Bypass
cd C:\

#Set-Service WinRM -StartupType Automatic

#Start-Service WinRM


#Stop,Start,Enable or Disable Service - Santhosh Sivarajan 
#www.sivarajan.com 
# 
$service = "WinRM" 
#Import-CSV D:\Scripts\input.csv | % 
#$computer = $_.ComputerName 
$computer = "$env:computername"
#
$result = (gwmi win32_service -computername $computer -filter "name='$service'").ChangeStartMode("Automatic")
#
$result = (gwmi win32_service -computername $computer -filter "name='$service'").startservice()
# 
#$result = (gwmi win32_service -computername $computer -filter "name='$service'").stopservice() 
#$result = (gwmi win32_service -computername $computer -filter "name='$service'").ChangeStartMode("Disabled") 
#$result = (gwmi win32_service -computername $computer -filter "name='$service'").ChangeStartMode("Automatic")