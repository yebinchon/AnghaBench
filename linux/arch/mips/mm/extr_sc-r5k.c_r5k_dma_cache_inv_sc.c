
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int R5K_Page_Invalidate_S ;
 int SC_PAGE ;
 int blast_r5000_scache () ;
 int cache_op (int ,unsigned long) ;
 unsigned long scache_size ;

__attribute__((used)) static void r5k_dma_cache_inv_sc(unsigned long addr, unsigned long size)
{
 unsigned long end, a;


 BUG_ON(size == 0);

 if (size >= scache_size) {
  blast_r5000_scache();
  return;
 }





 a = addr & ~(SC_PAGE - 1);
 end = (addr + size - 1) & ~(SC_PAGE - 1);
 while (a <= end) {
  cache_op(R5K_Page_Invalidate_S, a);
  a += SC_PAGE;
 }
}
