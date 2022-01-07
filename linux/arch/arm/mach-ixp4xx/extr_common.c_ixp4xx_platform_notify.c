
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {void* coherent_dma_mask; void** dma_mask; } ;


 void* DMA_BIT_MASK (int) ;
 scalar_t__ dev_is_pci (struct device*) ;
 int dmabounce_register_dev (struct device*,int,int,int ) ;
 int ixp4xx_needs_bounce ;

__attribute__((used)) static int ixp4xx_platform_notify(struct device *dev)
{
 dev->dma_mask = &dev->coherent_dma_mask;
 dev->coherent_dma_mask = DMA_BIT_MASK(32);
 return 0;
}
