
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int iob () ;
 int r3k_flush_dcache_range (unsigned long,unsigned long) ;

__attribute__((used)) static void r3k_dma_cache_wback_inv(unsigned long start, unsigned long size)
{

 BUG_ON(size == 0);

 iob();
 r3k_flush_dcache_range(start, start + size);
}
