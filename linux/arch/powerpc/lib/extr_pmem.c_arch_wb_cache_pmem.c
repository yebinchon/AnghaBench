
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_dcache_range (unsigned long,unsigned long) ;

void arch_wb_cache_pmem(void *addr, size_t size)
{
 unsigned long start = (unsigned long) addr;
 flush_dcache_range(start, start + size);
}
