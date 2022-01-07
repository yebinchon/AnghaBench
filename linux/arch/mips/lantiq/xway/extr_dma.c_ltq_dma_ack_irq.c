
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltq_dma_channel {int nr; } ;


 int DMA_IRQ_ACK ;
 int LTQ_DMA_CIS ;
 int LTQ_DMA_CS ;
 int ltq_dma_lock ;
 int ltq_dma_w32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
ltq_dma_ack_irq(struct ltq_dma_channel *ch)
{
 unsigned long flags;

 spin_lock_irqsave(&ltq_dma_lock, flags);
 ltq_dma_w32(ch->nr, LTQ_DMA_CS);
 ltq_dma_w32(DMA_IRQ_ACK, LTQ_DMA_CIS);
 spin_unlock_irqrestore(&ltq_dma_lock, flags);
}
