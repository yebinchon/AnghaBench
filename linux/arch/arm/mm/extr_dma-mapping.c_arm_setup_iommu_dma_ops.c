
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_ops {int dummy; } ;
struct device {int dummy; } ;



__attribute__((used)) static bool arm_setup_iommu_dma_ops(struct device *dev, u64 dma_base, u64 size,
        const struct iommu_ops *iommu)
{
 return 0;
}
