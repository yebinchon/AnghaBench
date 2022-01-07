
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int * dma_ops; } ;


 unsigned long BUS_NOTIFY_ADD_DEVICE ;
 int cell_dma_dev_setup (struct device*) ;
 scalar_t__ cell_iommu_enabled ;
 int dma_iommu_ops ;

__attribute__((used)) static int cell_of_bus_notify(struct notifier_block *nb, unsigned long action,
         void *data)
{
 struct device *dev = data;


 if (action != BUS_NOTIFY_ADD_DEVICE)
  return 0;

 if (cell_iommu_enabled)
  dev->dma_ops = &dma_iommu_ops;
 cell_dma_dev_setup(dev);
 return 0;
}
