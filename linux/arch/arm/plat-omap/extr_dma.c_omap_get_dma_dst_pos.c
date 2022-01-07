
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dma_addr_t ;
struct TYPE_2__ {int (* dma_read ) (int ,int) ;} ;


 int CDAC ;
 int CDSA ;
 int CPC ;
 scalar_t__ dma_omap1 () ;
 scalar_t__ dma_omap15xx () ;
 TYPE_1__* p ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int) ;
 int stub4 (int ,int) ;
 int stub5 (int ,int) ;
 scalar_t__ unlikely (int) ;

dma_addr_t omap_get_dma_dst_pos(int lch)
{
 dma_addr_t offset = 0;

 if (dma_omap15xx())
  offset = p->dma_read(CPC, lch);
 else
  offset = p->dma_read(CDAC, lch);





 if (!dma_omap15xx() && offset == 0) {
  offset = p->dma_read(CDAC, lch);





  if (unlikely(!offset))
   offset = p->dma_read(CDSA, lch);
 }

 if (dma_omap1())
  offset |= (p->dma_read(CDSA, lch) & 0xFFFF0000);

 return offset;
}
