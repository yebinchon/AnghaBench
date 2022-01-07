
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pci_dev {int dev; } ;


 scalar_t__ DMA_BIT_MASK (int) ;
 scalar_t__ dart_device_on_pcie (int *) ;
 scalar_t__ dart_is_u4 ;

__attribute__((used)) static bool iommu_bypass_supported_dart(struct pci_dev *dev, u64 mask)
{
 return dart_is_u4 &&
  dart_device_on_pcie(&dev->dev) &&
  mask >= DMA_BIT_MASK(40);
}
