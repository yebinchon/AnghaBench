
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* dma_read ) (int ,int) ;} ;


 int CCR ;
 int OMAP_DMA_CCR_EN ;
 int dma_chan_count ;
 scalar_t__ dma_omap1 () ;
 scalar_t__ omap_lcd_dma_running () ;
 TYPE_1__* p ;
 int stub1 (int ,int) ;

int omap_dma_running(void)
{
 int lch;

 if (dma_omap1())
  if (omap_lcd_dma_running())
   return 1;

 for (lch = 0; lch < dma_chan_count; lch++)
  if (p->dma_read(CCR, lch) & OMAP_DMA_CCR_EN)
   return 1;

 return 0;
}
