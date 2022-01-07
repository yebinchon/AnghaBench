
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iommu_bypass; } ;
struct device {TYPE_1__ archdata; } ;


 unsigned long DMA_ATTR_WEAK_ORDERING ;
 int iommu_fixed_is_weak ;

__attribute__((used)) static inline bool dma_iommu_map_bypass(struct device *dev,
  unsigned long attrs)
{
 return dev->archdata.iommu_bypass &&
  (!iommu_fixed_is_weak || (attrs & DMA_ATTR_WEAK_ORDERING));
}
