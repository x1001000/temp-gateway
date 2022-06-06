@echo off

for /F %%I in ('curl https://raw.githubusercontent.com/x1001000/temp-gateway/main/H03') do set token=%%I
if not %token%==PASS exit

net use x: \\aws-storage-gateway\H03 /user:username password

echo Please open network drive H03 (X:) which is TEMPORARILY connected to this PC
echo.
echo After manually copy/paste patient folders into remote Result
echo.

pause
net use x: /d /y
