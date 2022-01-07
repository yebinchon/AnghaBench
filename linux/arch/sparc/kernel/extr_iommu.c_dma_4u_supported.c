
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct iommu {scalar_t__ dma_addr_mask; } ;
struct TYPE_2__ {struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;


 scalar_t__ ali_sound_dma_hack (struct device*,scalar_t__) ;

__attribute__((used)) static int dma_4u_supported(struct device *dev, u64 device_mask)
{
 struct iommu *iommu = dev->archdata.iommu;

 if (ali_sound_dma_hack(dev, device_mask))
  return 1;

 if (device_mask < iommu->dma_addr_mask)
  return 0;
 return 1;
}
