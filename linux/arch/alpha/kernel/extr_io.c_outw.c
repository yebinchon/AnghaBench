
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ioport_map (unsigned long,int) ;
 int iowrite16 (int ,int ) ;

void outw(u16 b, unsigned long port)
{
 iowrite16(b, ioport_map(port, 2));
}
