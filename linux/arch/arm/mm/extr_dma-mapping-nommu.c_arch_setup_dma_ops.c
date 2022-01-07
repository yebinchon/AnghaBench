
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct iommu_ops {int dummy; } ;
struct TYPE_2__ {int dma_coherent; } ;
struct device {TYPE_1__ archdata; } ;


 int CONFIG_CPU_V7M ;
 int CR_M ;
 scalar_t__ IS_ENABLED (int ) ;
 int arm_nommu_dma_ops ;
 scalar_t__ cacheid ;
 int get_cr () ;
 int set_dma_ops (struct device*,int *) ;

void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
   const struct iommu_ops *iommu, bool coherent)
{
 if (IS_ENABLED(CONFIG_CPU_V7M)) {






  dev->archdata.dma_coherent = (cacheid) ? coherent : 1;
 } else {



  dev->archdata.dma_coherent = (get_cr() & CR_M) ? coherent : 1;
 }

 if (!dev->archdata.dma_coherent)
  set_dma_ops(dev, &arm_nommu_dma_ops);
}
