
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltq_dma_channel {int nr; } ;


 int DMA_CHAN_ON ;
 int LTQ_DMA_CCTRL ;
 int LTQ_DMA_CS ;
 int ltq_dma_lock ;
 int ltq_dma_w32 (int ,int ) ;
 int ltq_dma_w32_mask (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
ltq_dma_open(struct ltq_dma_channel *ch)
{
 unsigned long flag;

 spin_lock_irqsave(&ltq_dma_lock, flag);
 ltq_dma_w32(ch->nr, LTQ_DMA_CS);
 ltq_dma_w32_mask(0, DMA_CHAN_ON, LTQ_DMA_CCTRL);
 spin_unlock_irqrestore(&ltq_dma_lock, flag);
}
