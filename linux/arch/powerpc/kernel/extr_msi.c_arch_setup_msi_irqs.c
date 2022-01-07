
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int bus; } ;
struct TYPE_2__ {int (* setup_msi_irqs ) (struct pci_dev*,int,int) ;int teardown_msi_irqs; } ;
struct pci_controller {TYPE_1__ controller_ops; } ;


 int ENOSYS ;
 int PCI_CAP_ID_MSI ;
 struct pci_controller* pci_bus_to_host (int ) ;
 int pr_debug (char*) ;
 int stub1 (struct pci_dev*,int,int) ;

int arch_setup_msi_irqs(struct pci_dev *dev, int nvec, int type)
{
 struct pci_controller *phb = pci_bus_to_host(dev->bus);

 if (!phb->controller_ops.setup_msi_irqs ||
     !phb->controller_ops.teardown_msi_irqs) {
  pr_debug("msi: Platform doesn't provide MSI callbacks.\n");
  return -ENOSYS;
 }


 if (type == PCI_CAP_ID_MSI && nvec > 1)
  return 1;

 return phb->controller_ops.setup_msi_irqs(dev, nvec, type);
}
