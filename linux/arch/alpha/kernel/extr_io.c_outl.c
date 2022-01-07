
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ioport_map (unsigned long,int) ;
 int iowrite32 (int ,int ) ;

void outl(u32 b, unsigned long port)
{
 iowrite32(b, ioport_map(port, 4));
}
