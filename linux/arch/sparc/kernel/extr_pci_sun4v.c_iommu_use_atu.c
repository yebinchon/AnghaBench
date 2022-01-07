
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct iommu {scalar_t__ atu; } ;


 scalar_t__ DMA_BIT_MASK (int) ;

__attribute__((used)) static inline bool iommu_use_atu(struct iommu *iommu, u64 mask)
{
 return iommu->atu && mask > DMA_BIT_MASK(32);
}
