
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int coherent_dma_mask; int * dma_ops; } ;
struct pci_dev {int vendor; int device; TYPE_1__ dev; } ;


 int DMA_BIT_MASK (int) ;
 int FW_FEATURE_LPAR ;
 int firmware_has_feature (int ) ;
 int iommu_table_iobmap ;
 int pci_name (struct pci_dev*) ;
 int pr_debug (char*,struct pci_dev*,int ) ;
 int set_iommu_table_base (TYPE_1__*,int *) ;

__attribute__((used)) static void pci_dma_dev_setup_pasemi(struct pci_dev *dev)
{
 pr_debug("pci_dma_dev_setup, dev %p (%s)\n", dev, pci_name(dev));






 if (dev->vendor == 0x1959 && dev->device == 0xa007 &&
     !firmware_has_feature(FW_FEATURE_LPAR)) {
  dev->dev.dma_ops = ((void*)0);




  dev->dev.coherent_dma_mask = DMA_BIT_MASK(44);
  return;
 }


 set_iommu_table_base(&dev->dev, &iommu_table_iobmap);
}
