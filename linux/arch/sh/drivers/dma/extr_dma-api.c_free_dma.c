
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_info {TYPE_1__* ops; } ;
struct dma_channel {int busy; } ;
struct TYPE_2__ {int (* free ) (struct dma_channel*) ;} ;


 int atomic_set (int *,int ) ;
 struct dma_channel* get_dma_channel (unsigned int) ;
 struct dma_info* get_dma_info (unsigned int) ;
 int stub1 (struct dma_channel*) ;

void free_dma(unsigned int chan)
{
 struct dma_info *info = get_dma_info(chan);
 struct dma_channel *channel = get_dma_channel(chan);

 if (info->ops->free)
  info->ops->free(channel);

 atomic_set(&channel->busy, 0);
}
