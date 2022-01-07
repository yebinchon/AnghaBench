
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long uncached_end ;
 unsigned long uncached_start ;

int virt_addr_uncached(unsigned long kaddr)
{
 return (kaddr >= uncached_start) && (kaddr < uncached_end);
}
