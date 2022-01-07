
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev_id; int next_lch; int * callback; } ;
struct TYPE_3__ {int (* dma_write ) (int ,int ,int) ;} ;


 int CCR ;
 TYPE_2__* dma_chan ;
 int dma_chan_lock ;
 scalar_t__ dma_omap2plus () ;
 int omap2_disable_irq_lch (int) ;
 int omap_clear_dma (int) ;
 int omap_disable_channel_irq (int) ;
 TYPE_1__* p ;
 int pr_err (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ,int) ;

void omap_free_dma(int lch)
{
 unsigned long flags;

 if (dma_chan[lch].dev_id == -1) {
  pr_err("omap_dma: trying to free unallocated DMA channel %d\n",
         lch);
  return;
 }


 if (dma_omap2plus())
  omap2_disable_irq_lch(lch);


 omap_disable_channel_irq(lch);


 p->dma_write(0, CCR, lch);


 if (dma_omap2plus())
  omap_clear_dma(lch);

 spin_lock_irqsave(&dma_chan_lock, flags);
 dma_chan[lch].dev_id = -1;
 dma_chan[lch].next_lch = -1;
 dma_chan[lch].callback = ((void*)0);
 spin_unlock_irqrestore(&dma_chan_lock, flags);
}
