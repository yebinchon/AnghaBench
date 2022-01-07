
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_ops_setup; } ;
struct device {TYPE_1__ archdata; } ;


 int arm_teardown_iommu_dma_ops (struct device*) ;
 int set_dma_ops (struct device*,int *) ;

void arch_teardown_dma_ops(struct device *dev)
{
 if (!dev->archdata.dma_ops_setup)
  return;

 arm_teardown_iommu_dma_ops(dev);

 set_dma_ops(dev, ((void*)0));
}
