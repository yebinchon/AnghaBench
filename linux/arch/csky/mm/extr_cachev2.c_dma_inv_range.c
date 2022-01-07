
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L1_CACHE_BYTES ;
 int sync_is () ;

void dma_inv_range(unsigned long start, unsigned long end)
{
 unsigned long i = start & ~(L1_CACHE_BYTES - 1);

 for (; i < end; i += L1_CACHE_BYTES)
  asm volatile("dcache.iva %0\n"::"r"(i):"memory");
 sync_is();
}
