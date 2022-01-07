
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_info {TYPE_1__* ops; } ;
struct dma_channel {unsigned long sar; unsigned long dar; size_t count; unsigned int mode; } ;
struct TYPE_2__ {int (* xfer ) (struct dma_channel*) ;} ;


 struct dma_channel* get_dma_channel (unsigned int) ;
 struct dma_info* get_dma_info (unsigned int) ;
 int stub1 (struct dma_channel*) ;

int dma_xfer(unsigned int chan, unsigned long from,
      unsigned long to, size_t size, unsigned int mode)
{
 struct dma_info *info = get_dma_info(chan);
 struct dma_channel *channel = get_dma_channel(chan);

 channel->sar = from;
 channel->dar = to;
 channel->count = size;
 channel->mode = mode;

 return info->ops->xfer(channel);
}
