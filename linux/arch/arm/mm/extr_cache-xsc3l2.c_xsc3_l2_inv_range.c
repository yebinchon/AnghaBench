
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_LINE_SIZE ;
 int dsb () ;
 unsigned long l2_map_va (unsigned long,unsigned long) ;
 int l2_unmap_va (unsigned long) ;
 int xsc3_l2_clean_mva (unsigned long) ;
 int xsc3_l2_inv_all () ;
 int xsc3_l2_inv_mva (unsigned long) ;

__attribute__((used)) static void xsc3_l2_inv_range(unsigned long start, unsigned long end)
{
 unsigned long vaddr;

 if (start == 0 && end == -1ul) {
  xsc3_l2_inv_all();
  return;
 }

 vaddr = -1;




 if (start & (CACHE_LINE_SIZE - 1)) {
  vaddr = l2_map_va(start & ~(CACHE_LINE_SIZE - 1), vaddr);
  xsc3_l2_clean_mva(vaddr);
  xsc3_l2_inv_mva(vaddr);
  start = (start | (CACHE_LINE_SIZE - 1)) + 1;
 }




 while (start < (end & ~(CACHE_LINE_SIZE - 1))) {
  vaddr = l2_map_va(start, vaddr);
  xsc3_l2_inv_mva(vaddr);
  start += CACHE_LINE_SIZE;
 }




 if (start < end) {
  vaddr = l2_map_va(start, vaddr);
  xsc3_l2_clean_mva(vaddr);
  xsc3_l2_inv_mva(vaddr);
 }

 l2_unmap_va(vaddr);

 dsb();
}
