
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef enum omap_dma_channel_mode { ____Placeholder_omap_dma_channel_mode } omap_dma_channel_mode ;
struct TYPE_2__ {int (* dma_read ) (int ,int) ;int (* dma_write ) (int,int ,int) ;} ;


 int LCH_CTRL ;
 scalar_t__ dma_omap1 () ;
 int dma_omap15xx () ;
 TYPE_1__* p ;
 int stub1 (int ,int) ;
 int stub2 (int,int ,int) ;

void omap_set_dma_channel_mode(int lch, enum omap_dma_channel_mode mode)
{
 if (dma_omap1() && !dma_omap15xx()) {
  u32 l;

  l = p->dma_read(LCH_CTRL, lch);
  l &= ~0x7;
  l |= mode;
  p->dma_write(l, LCH_CTRL, lch);
 }
}
