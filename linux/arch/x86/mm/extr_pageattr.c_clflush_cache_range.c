
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clflush_cache_range_opt (void*,unsigned int) ;
 int mb () ;

void clflush_cache_range(void *vaddr, unsigned int size)
{
 mb();
 clflush_cache_range_opt(vaddr, size);
 mb();
}
