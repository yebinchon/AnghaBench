
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clflush_cache_range (void*,size_t) ;

void arch_invalidate_pmem(void *addr, size_t size)
{
 clflush_cache_range(addr, size);
}
