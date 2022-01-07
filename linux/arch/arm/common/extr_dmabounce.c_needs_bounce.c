
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dmabounce; } ;
struct device {unsigned long* dma_mask; TYPE_2__ archdata; } ;
typedef size_t dma_addr_t ;
struct TYPE_3__ {int (* needs_bounce ) (struct device*,size_t,size_t) ;} ;


 int E2BIG ;
 int dev_err (struct device*,char*,size_t,unsigned long) ;
 int stub1 (struct device*,size_t,size_t) ;

__attribute__((used)) static int needs_bounce(struct device *dev, dma_addr_t dma_addr, size_t size)
{
 if (!dev || !dev->archdata.dmabounce)
  return 0;

 if (dev->dma_mask) {
  unsigned long limit, mask = *dev->dma_mask;

  limit = (mask + 1) & ~mask;
  if (limit && size > limit) {
   dev_err(dev, "DMA mapping too big (requested %#x "
    "mask %#Lx)\n", size, *dev->dma_mask);
   return -E2BIG;
  }


  if ((dma_addr | (dma_addr + size - 1)) & ~mask)
   return 1;
 }

 return !!dev->archdata.dmabounce->needs_bounce(dev, dma_addr, size);
}
