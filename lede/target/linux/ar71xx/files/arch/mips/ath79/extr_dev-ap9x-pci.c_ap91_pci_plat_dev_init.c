
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * platform_data; } ;
struct pci_dev {TYPE_1__ dev; int devfn; } ;


 int PCI_SLOT (int ) ;
 int ap9x_wmac0_data ;

__attribute__((used)) static int ap91_pci_plat_dev_init(struct pci_dev *dev)
{
 switch (PCI_SLOT(dev->devfn)) {
 case 0:
  dev->dev.platform_data = &ap9x_wmac0_data;
  break;
 }

 return 0;
}
