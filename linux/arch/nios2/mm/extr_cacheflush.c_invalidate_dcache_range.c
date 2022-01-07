
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __invalidate_dcache (unsigned long,unsigned long) ;

void invalidate_dcache_range(unsigned long start, unsigned long end)
{
 __invalidate_dcache(start, end);
}
