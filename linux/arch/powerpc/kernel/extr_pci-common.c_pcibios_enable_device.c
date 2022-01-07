
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int bus; } ;
struct TYPE_2__ {int (* enable_device_hook ) (struct pci_dev*) ;} ;
struct pci_controller {TYPE_1__ controller_ops; } ;


 int EINVAL ;
 struct pci_controller* pci_bus_to_host (int ) ;
 int pci_enable_resources (struct pci_dev*,int) ;
 int stub1 (struct pci_dev*) ;

int pcibios_enable_device(struct pci_dev *dev, int mask)
{
 struct pci_controller *phb = pci_bus_to_host(dev->bus);

 if (phb->controller_ops.enable_device_hook)
  if (!phb->controller_ops.enable_device_hook(dev))
   return -EINVAL;

 return pci_enable_resources(dev, mask);
}
