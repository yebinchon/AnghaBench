
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int __dma_cache_wback (int ,unsigned long) ;

void dma_cache_wback(phys_addr_t start, unsigned long sz)
{
 __dma_cache_wback(start, sz);
}
