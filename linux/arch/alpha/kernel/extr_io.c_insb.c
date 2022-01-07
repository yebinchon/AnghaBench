
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ioport_map (unsigned long,int) ;
 int ioread8_rep (int ,void*,unsigned long) ;

void insb(unsigned long port, void *dst, unsigned long count)
{
 ioread8_rep(ioport_map(port, 1), dst, count);
}
