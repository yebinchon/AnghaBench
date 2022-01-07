
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __flush_dcache (unsigned long,unsigned long) ;
 int __flush_icache (unsigned long,unsigned long) ;

void flush_icache_range(unsigned long start, unsigned long end)
{
 __flush_dcache(start, end);
 __flush_icache(start, end);
}
