
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ikbd_write (char const*,int) ;

void ikbd_reset(void)
{
 static const char cmd[2] = { 0x80, 0x01 };

 ikbd_write(cmd, 2);





}
