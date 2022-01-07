
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_channel {unsigned int chan; } ;
struct TYPE_4__ {TYPE_1__* channel; } ;
struct TYPE_3__ {scalar_t__ xfer_enable; scalar_t__ chan_enable; } ;


 TYPE_2__* g2_dma ;

__attribute__((used)) static int g2_disable_dma(struct dma_channel *chan)
{
 unsigned int chan_nr = chan->chan;

 g2_dma->channel[chan_nr].chan_enable = 0;
 g2_dma->channel[chan_nr].xfer_enable = 0;

 return 0;
}
