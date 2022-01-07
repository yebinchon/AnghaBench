
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ioport_map (unsigned long,int) ;
 int iowrite16_rep (int ,void const*,unsigned long) ;

void outsw(unsigned long port, const void *src, unsigned long count)
{
 iowrite16_rep(ioport_map(port, 2), src, count);
}
