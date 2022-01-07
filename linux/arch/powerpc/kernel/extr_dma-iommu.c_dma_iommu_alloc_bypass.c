
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iommu_bypass; } ;
struct device {int coherent_dma_mask; TYPE_1__ archdata; } ;


 scalar_t__ dma_direct_supported (struct device*,int ) ;
 int iommu_fixed_is_weak ;

__attribute__((used)) static inline bool dma_iommu_alloc_bypass(struct device *dev)
{
 return dev->archdata.iommu_bypass && !iommu_fixed_is_weak &&
  dma_direct_supported(dev, dev->coherent_dma_mask);
}
