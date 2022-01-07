
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_addr_t ;


 unsigned int calc_px (int ) ;
 unsigned int calc_rtx (int ) ;
 unsigned int calc_sx (int ) ;
 unsigned long* dma_get_page_table_origin (unsigned long*) ;
 unsigned long* dma_get_seg_table_origin (unsigned long*) ;

unsigned long *dma_walk_cpu_trans(unsigned long *rto, dma_addr_t dma_addr)
{
 unsigned long *sto, *pto;
 unsigned int rtx, sx, px;

 rtx = calc_rtx(dma_addr);
 sto = dma_get_seg_table_origin(&rto[rtx]);
 if (!sto)
  return ((void*)0);

 sx = calc_sx(dma_addr);
 pto = dma_get_page_table_origin(&sto[sx]);
 if (!pto)
  return ((void*)0);

 px = calc_px(dma_addr);
 return &pto[px];
}
