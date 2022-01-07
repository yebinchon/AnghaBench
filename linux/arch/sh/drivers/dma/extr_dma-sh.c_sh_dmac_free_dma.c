
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_channel {int chan; } ;


 int free_irq (int ,struct dma_channel*) ;
 int get_dmte_irq (int ) ;

__attribute__((used)) static void sh_dmac_free_dma(struct dma_channel *chan)
{
 free_irq(get_dmte_irq(chan->chan), chan);
}
