
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ikbd_write (char*,int) ;

void ikbd_mouse_pos_set(int x, int y)
{
 char cmd[6] = { 0x0E, 0x00, x>>8, x&0xFF, y>>8, y&0xFF };

 ikbd_write(cmd, 6);
}
