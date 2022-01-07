
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ikbd_write (char*,int) ;

void ikbd_mouse_button_action(int mode)
{
 char cmd[2] = { 0x07, mode };

 ikbd_write(cmd, 2);
}
