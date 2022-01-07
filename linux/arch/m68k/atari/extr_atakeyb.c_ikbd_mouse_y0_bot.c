
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ikbd_write (char const*,int) ;

void ikbd_mouse_y0_bot(void)
{
 static const char cmd[1] = { 0x0F };

 ikbd_write(cmd, 1);
}
