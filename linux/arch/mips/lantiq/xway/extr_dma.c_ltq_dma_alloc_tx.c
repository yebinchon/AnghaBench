
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltq_dma_channel {int nr; } ;


 int DMA_DESCPT ;
 int DMA_TX ;
 int DMA_WEIGHT ;
 int LTQ_DMA_CCTRL ;
 int LTQ_DMA_CIE ;
 int LTQ_DMA_IRNEN ;
 int ltq_dma_alloc (struct ltq_dma_channel*) ;
 int ltq_dma_lock ;
 int ltq_dma_w32 (int,int ) ;
 int ltq_dma_w32_mask (int ,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
ltq_dma_alloc_tx(struct ltq_dma_channel *ch)
{
 unsigned long flags;

 ltq_dma_alloc(ch);

 spin_lock_irqsave(&ltq_dma_lock, flags);
 ltq_dma_w32(DMA_DESCPT, LTQ_DMA_CIE);
 ltq_dma_w32_mask(0, 1 << ch->nr, LTQ_DMA_IRNEN);
 ltq_dma_w32(DMA_WEIGHT | DMA_TX, LTQ_DMA_CCTRL);
 spin_unlock_irqrestore(&ltq_dma_lock, flags);
}
