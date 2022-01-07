
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dma_offset; } ;
struct TYPE_5__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; } ;


 int DART_U4_BYPASS_BASE ;
 scalar_t__ dart_device_on_pcie (TYPE_2__*) ;
 scalar_t__ dart_is_u4 ;
 int iommu_table_dart ;
 int set_iommu_table_base (TYPE_2__*,int *) ;

__attribute__((used)) static void pci_dma_dev_setup_dart(struct pci_dev *dev)
{
 if (dart_is_u4 && dart_device_on_pcie(&dev->dev))
  dev->dev.archdata.dma_offset = DART_U4_BYPASS_BASE;
 set_iommu_table_base(&dev->dev, &iommu_table_dart);
}
