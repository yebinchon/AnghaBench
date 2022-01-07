
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** dma_mask; void* coherent_dma_mask; } ;
struct platform_device {void* dma_mask; TYPE_1__ dev; } ;


 void* DMA_BIT_MASK (int) ;

__attribute__((used)) static void setup_pdev_dma_masks(struct platform_device *pdev)
{
 if (!pdev->dev.coherent_dma_mask)
  pdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
 if (!pdev->dma_mask)
  pdev->dma_mask = DMA_BIT_MASK(32);
 if (!pdev->dev.dma_mask)
  pdev->dev.dma_mask = &pdev->dma_mask;
}
