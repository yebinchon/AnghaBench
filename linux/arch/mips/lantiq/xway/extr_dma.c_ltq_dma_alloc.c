
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltq_dma_channel {int phys; int nr; int dev; int desc_base; scalar_t__ desc; } ;


 int DMA_CHAN_ON ;
 int DMA_CHAN_RST ;
 int GFP_ATOMIC ;
 int LTQ_DESC_NUM ;
 int LTQ_DESC_SIZE ;
 int LTQ_DMA_CCTRL ;
 int LTQ_DMA_CDBA ;
 int LTQ_DMA_CDLEN ;
 int LTQ_DMA_CS ;
 int dma_alloc_coherent (int ,int,int*,int ) ;
 int ltq_dma_lock ;
 int ltq_dma_r32 (int ) ;
 int ltq_dma_w32 (int,int ) ;
 int ltq_dma_w32_mask (int ,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;

__attribute__((used)) static void
ltq_dma_alloc(struct ltq_dma_channel *ch)
{
 unsigned long flags;

 ch->desc = 0;
 ch->desc_base = dma_alloc_coherent(ch->dev,
        LTQ_DESC_NUM * LTQ_DESC_SIZE,
        &ch->phys, GFP_ATOMIC);

 spin_lock_irqsave(&ltq_dma_lock, flags);
 ltq_dma_w32(ch->nr, LTQ_DMA_CS);
 ltq_dma_w32(ch->phys, LTQ_DMA_CDBA);
 ltq_dma_w32(LTQ_DESC_NUM, LTQ_DMA_CDLEN);
 ltq_dma_w32_mask(DMA_CHAN_ON, 0, LTQ_DMA_CCTRL);
 wmb();
 ltq_dma_w32_mask(0, DMA_CHAN_RST, LTQ_DMA_CCTRL);
 while (ltq_dma_r32(LTQ_DMA_CCTRL) & DMA_CHAN_RST)
  ;
 spin_unlock_irqrestore(&ltq_dma_lock, flags);
}
