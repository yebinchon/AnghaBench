
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_info {TYPE_1__* ops; } ;
struct dma_channel {int dummy; } ;
struct TYPE_2__ {int (* extend ) (struct dma_channel*,unsigned long,void*) ;} ;


 int ENOSYS ;
 struct dma_channel* get_dma_channel (unsigned int) ;
 struct dma_info* get_dma_info (unsigned int) ;
 int stub1 (struct dma_channel*,unsigned long,void*) ;

int dma_extend(unsigned int chan, unsigned long op, void *param)
{
 struct dma_info *info = get_dma_info(chan);
 struct dma_channel *channel = get_dma_channel(chan);

 if (info->ops->extend)
  return info->ops->extend(channel, op, param);

 return -ENOSYS;
}
