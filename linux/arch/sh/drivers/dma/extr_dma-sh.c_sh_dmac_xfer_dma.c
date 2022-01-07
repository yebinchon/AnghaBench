
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_channel {int flags; int sar; scalar_t__ chan; int dar; int count; } ;


 scalar_t__ DAR ;
 int DMA_CONFIGURED ;
 scalar_t__ PVR2_CASCADE_CHAN ;
 scalar_t__ SAR ;
 scalar_t__ TCR ;
 int __raw_writel (int,scalar_t__) ;
 int calc_xmit_shift (struct dma_channel*) ;
 scalar_t__ dma_base_addr (scalar_t__) ;
 scalar_t__ mach_is_dreamcast () ;
 int sh_dmac_configure_channel (struct dma_channel*,int ) ;
 int sh_dmac_disable_dma (struct dma_channel*) ;
 int sh_dmac_enable_dma (struct dma_channel*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sh_dmac_xfer_dma(struct dma_channel *chan)
{




 if (unlikely(!(chan->flags & DMA_CONFIGURED)))
  sh_dmac_configure_channel(chan, 0);

 sh_dmac_disable_dma(chan);
 if (chan->sar || (mach_is_dreamcast() &&
     chan->chan == PVR2_CASCADE_CHAN))
  __raw_writel(chan->sar, (dma_base_addr(chan->chan) + SAR));
 if (chan->dar || (mach_is_dreamcast() &&
     chan->chan == PVR2_CASCADE_CHAN))
  __raw_writel(chan->dar, (dma_base_addr(chan->chan) + DAR));

 __raw_writel(chan->count >> calc_xmit_shift(chan),
  (dma_base_addr(chan->chan) + TCR));

 sh_dmac_enable_dma(chan);

 return 0;
}
