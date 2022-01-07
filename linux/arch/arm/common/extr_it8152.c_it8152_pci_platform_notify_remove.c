
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ dev_is_pci (struct device*) ;
 int dmabounce_unregister_dev (struct device*) ;

__attribute__((used)) static int it8152_pci_platform_notify_remove(struct device *dev)
{
 if (dev_is_pci(dev))
  dmabounce_unregister_dev(dev);

 return 0;
}
