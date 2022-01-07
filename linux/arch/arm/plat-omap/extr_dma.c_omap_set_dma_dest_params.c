
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* dma_read ) (int ,int) ;int (* dma_write ) (int,int ,int) ;} ;


 int CCR ;
 int CDEI ;
 int CDFI ;
 int CDSA ;
 int CSDP ;
 scalar_t__ dma_omap1 () ;
 TYPE_1__* p ;
 int stub1 (int ,int) ;
 int stub2 (int,int ,int) ;
 int stub3 (int ,int) ;
 int stub4 (int,int ,int) ;
 int stub5 (unsigned long,int ,int) ;
 int stub6 (int,int ,int) ;
 int stub7 (int,int ,int) ;

void omap_set_dma_dest_params(int lch, int dest_port, int dest_amode,
         unsigned long dest_start,
         int dst_ei, int dst_fi)
{
 u32 l;

 if (dma_omap1()) {
  l = p->dma_read(CSDP, lch);
  l &= ~(0x1f << 9);
  l |= dest_port << 9;
  p->dma_write(l, CSDP, lch);
 }

 l = p->dma_read(CCR, lch);
 l &= ~(0x03 << 14);
 l |= dest_amode << 14;
 p->dma_write(l, CCR, lch);

 p->dma_write(dest_start, CDSA, lch);

 p->dma_write(dst_ei, CDEI, lch);
 p->dma_write(dst_fi, CDFI, lch);
}
