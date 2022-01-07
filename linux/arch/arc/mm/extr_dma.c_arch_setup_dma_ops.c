
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iommu_ops {int dummy; } ;
struct device {int dma_coherent; } ;


 int dev_info (struct device*,char*,char*) ;
 scalar_t__ ioc_enable ;
 scalar_t__ is_isa_arcv2 () ;

void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
   const struct iommu_ops *iommu, bool coherent)
{





 if (is_isa_arcv2() && ioc_enable && coherent)
  dev->dma_coherent = 1;

 dev_info(dev, "use %scoherent DMA ops\n",
   dev->dma_coherent ? "" : "non");
}
