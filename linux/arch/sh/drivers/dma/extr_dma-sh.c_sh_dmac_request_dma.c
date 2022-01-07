
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_channel {int flags; int dev_id; int chan; } ;


 int DMA_TEI_CAPABLE ;
 int IRQF_SHARED ;
 int dma_tei ;
 int get_dmte_irq (int ) ;
 int request_irq (int ,int ,int ,int ,struct dma_channel*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sh_dmac_request_dma(struct dma_channel *chan)
{
 if (unlikely(!(chan->flags & DMA_TEI_CAPABLE)))
  return 0;

 return request_irq(get_dmte_irq(chan->chan), dma_tei, IRQF_SHARED,
      chan->dev_id, chan);
}
