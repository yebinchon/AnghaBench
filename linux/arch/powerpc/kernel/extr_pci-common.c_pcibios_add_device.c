
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_4__ {int (* pcibios_fixup_sriov ) (struct pci_dev*) ;} ;
struct TYPE_3__ {scalar_t__ is_added; } ;


 int pcibios_setup_device (struct pci_dev*) ;
 TYPE_2__ ppc_md ;
 int stub1 (struct pci_dev*) ;

int pcibios_add_device(struct pci_dev *dev)
{




 if (dev->bus->is_added)
  pcibios_setup_device(dev);






 return 0;
}
