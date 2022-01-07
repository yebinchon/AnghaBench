
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_channel {int flags; int chan; } ;


 scalar_t__ CHCR ;
 unsigned long CHCR_IE ;
 int DMA_CONFIGURED ;
 int DMA_TEI_CAPABLE ;
 unsigned long RS_DUAL ;
 int __raw_writel (unsigned long,scalar_t__) ;
 scalar_t__ dma_base_addr (int ) ;

__attribute__((used)) static int
sh_dmac_configure_channel(struct dma_channel *chan, unsigned long chcr)
{
 if (!chcr)
  chcr = RS_DUAL | CHCR_IE;

 if (chcr & CHCR_IE) {
  chcr &= ~CHCR_IE;
  chan->flags |= DMA_TEI_CAPABLE;
 } else {
  chan->flags &= ~DMA_TEI_CAPABLE;
 }

 __raw_writel(chcr, (dma_base_addr(chan->chan) + CHCR));

 chan->flags |= DMA_CONFIGURED;
 return 0;
}
