
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct iommu_ops {int dummy; } ;
struct dma_map_ops {int dummy; } ;
struct TYPE_2__ {int dma_coherent; int dma_ops_setup; } ;
struct device {int dma_coherent; TYPE_1__ archdata; int * dma_ops; } ;


 struct dma_map_ops* arm_get_dma_map_ops (int) ;
 struct dma_map_ops* arm_get_iommu_dma_map_ops (int) ;
 scalar_t__ arm_setup_iommu_dma_ops (struct device*,int ,int ,struct iommu_ops const*) ;
 int set_dma_ops (struct device*,struct dma_map_ops const*) ;
 scalar_t__ xen_initial_domain () ;
 int xen_swiotlb_dma_ops ;

void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
   const struct iommu_ops *iommu, bool coherent)
{
 const struct dma_map_ops *dma_ops;

 dev->archdata.dma_coherent = coherent;
 if (dev->dma_ops)
  return;

 if (arm_setup_iommu_dma_ops(dev, dma_base, size, iommu))
  dma_ops = arm_get_iommu_dma_map_ops(coherent);
 else
  dma_ops = arm_get_dma_map_ops(coherent);

 set_dma_ops(dev, dma_ops);





 dev->archdata.dma_ops_setup = 1;
}
