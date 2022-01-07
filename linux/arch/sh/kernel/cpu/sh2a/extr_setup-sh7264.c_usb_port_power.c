
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __raw_writew (int,int) ;

__attribute__((used)) static void usb_port_power(int port, int power)
{
 __raw_writew(0x200 , 0xffffc0c2) ;
}
