
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (scalar_t__,scalar_t__) ;
 scalar_t__ motor_off_timer ;

__attribute__((used)) static void floppy_off (unsigned int nr)
{
 int drive;

 drive = nr & 3;
 mod_timer(motor_off_timer + drive, jiffies + 3*HZ);
}
