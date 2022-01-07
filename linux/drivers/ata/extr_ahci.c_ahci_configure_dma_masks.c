
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; scalar_t__ dma_mask; } ;


 scalar_t__ DMA_BIT_MASK (int const) ;
 int dev_err (int *,char*) ;
 int dma_set_mask_and_coherent (int *,scalar_t__) ;

__attribute__((used)) static int ahci_configure_dma_masks(struct pci_dev *pdev, int using_dac)
{
 const int dma_bits = using_dac ? 64 : 32;
 int rc;
 if (pdev->dma_mask && pdev->dma_mask < DMA_BIT_MASK(32))
  return 0;

 rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(dma_bits));
 if (rc)
  dev_err(&pdev->dev, "DMA enable failed\n");
 return rc;
}
