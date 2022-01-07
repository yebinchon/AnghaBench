
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct device {scalar_t__ coherent_dma_mask; } ;


 int DMA_BIT_MASK (int) ;
 int __dma_supported (struct device*,scalar_t__,int) ;
 int dev_warn (struct device*,char*) ;

__attribute__((used)) static u64 get_coherent_dma_mask(struct device *dev)
{
 u64 mask = (u64)DMA_BIT_MASK(32);

 if (dev) {
  mask = dev->coherent_dma_mask;





  if (mask == 0) {
   dev_warn(dev, "coherent DMA mask is unset\n");
   return 0;
  }

  if (!__dma_supported(dev, mask, 1))
   return 0;
 }

 return mask;
}
