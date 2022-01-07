
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* pcibios_bus_add_device ) (struct pci_dev*) ;} ;


 TYPE_1__ ppc_md ;
 int stub1 (struct pci_dev*) ;

void pcibios_bus_add_device(struct pci_dev *pdev)
{
 if (ppc_md.pcibios_bus_add_device)
  ppc_md.pcibios_bus_add_device(pdev);
}
