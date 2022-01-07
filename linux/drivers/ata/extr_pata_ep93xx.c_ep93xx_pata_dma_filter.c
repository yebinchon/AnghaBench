
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {void* private; } ;


 scalar_t__ ep93xx_dma_chan_is_m2p (struct dma_chan*) ;

__attribute__((used)) static bool ep93xx_pata_dma_filter(struct dma_chan *chan, void *filter_param)
{
 if (ep93xx_dma_chan_is_m2p(chan))
  return 0;

 chan->private = filter_param;
 return 1;
}
