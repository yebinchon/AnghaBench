
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int (* dma_read ) (int ,int) ;int (* dma_write ) (int,int ,int) ;} ;


 int CCR ;
 int CSDP ;
 int CSEI ;
 int CSFI ;
 int CSSA ;
 scalar_t__ dma_omap1 () ;
 TYPE_1__* p ;
 int stub1 (int ,int) ;
 int stub2 (int,int ,int) ;
 int stub3 (int ,int) ;
 int stub4 (int,int ,int) ;
 int stub5 (unsigned long,int ,int) ;
 int stub6 (int,int ,int) ;
 int stub7 (int,int ,int) ;

void omap_set_dma_src_params(int lch, int src_port, int src_amode,
        unsigned long src_start,
        int src_ei, int src_fi)
{
 u32 l;

 if (dma_omap1()) {
  u16 w;

  w = p->dma_read(CSDP, lch);
  w &= ~(0x1f << 2);
  w |= src_port << 2;
  p->dma_write(w, CSDP, lch);
 }

 l = p->dma_read(CCR, lch);
 l &= ~(0x03 << 12);
 l |= src_amode << 12;
 p->dma_write(l, CCR, lch);

 p->dma_write(src_start, CSSA, lch);

 p->dma_write(src_ei, CSEI, lch);
 p->dma_write(src_fi, CSFI, lch);
}
