
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ikbd_write (char const*,int) ;

void ikbd_joystick_event_on(void)
{
 static const char cmd[1] = { 0x14 };

 ikbd_write(cmd, 1);
}
