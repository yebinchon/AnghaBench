
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ioport_map (unsigned long,int) ;
 int ioread16_rep (int ,void*,unsigned long) ;

void insw(unsigned long port, void *dst, unsigned long count)
{
 ioread16_rep(ioport_map(port, 2), dst, count);
}
