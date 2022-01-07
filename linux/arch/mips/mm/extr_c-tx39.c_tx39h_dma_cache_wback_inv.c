
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int blast_inv_dcache_range (unsigned long,unsigned long) ;
 int iob () ;

__attribute__((used)) static void tx39h_dma_cache_wback_inv(unsigned long addr, unsigned long size)
{

 BUG_ON(size == 0);

 iob();
 blast_inv_dcache_range(addr, addr + size);
}
