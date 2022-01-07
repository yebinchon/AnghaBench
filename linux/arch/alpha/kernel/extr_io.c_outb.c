
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ioport_map (unsigned long,int) ;
 int iowrite8 (int ,int ) ;

void outb(u8 b, unsigned long port)
{
 iowrite8(b, ioport_map(port, 1));
}
