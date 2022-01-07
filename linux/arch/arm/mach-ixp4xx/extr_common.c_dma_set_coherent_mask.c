
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int coherent_dma_mask; } ;


 int DMA_BIT_MASK (int) ;
 int EIO ;
 scalar_t__ dev_is_pci (struct device*) ;

int dma_set_coherent_mask(struct device *dev, u64 mask)
{
 if (dev_is_pci(dev))
  mask &= DMA_BIT_MASK(28);

 if ((mask & DMA_BIT_MASK(28)) == DMA_BIT_MASK(28)) {
  dev->coherent_dma_mask = mask;
  return 0;
 }

 return -EIO;
}
