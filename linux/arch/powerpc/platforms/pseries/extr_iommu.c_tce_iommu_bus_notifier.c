
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int dummy; } ;



 int iommu_del_device (struct device*) ;

__attribute__((used)) static int tce_iommu_bus_notifier(struct notifier_block *nb,
  unsigned long action, void *data)
{
 struct device *dev = data;

 switch (action) {
 case 128:
  iommu_del_device(dev);
  return 0;
 default:
  return 0;
 }
}
