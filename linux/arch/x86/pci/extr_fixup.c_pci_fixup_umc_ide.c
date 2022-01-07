
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* resource; int dev; } ;
struct TYPE_2__ {int flags; } ;


 int PCI_BASE_ADDRESS_SPACE_IO ;
 int dev_warn (int *,char*) ;

__attribute__((used)) static void pci_fixup_umc_ide(struct pci_dev *d)
{




 int i;

 dev_warn(&d->dev, "Fixing base address flags\n");
 for(i = 0; i < 4; i++)
  d->resource[i].flags |= PCI_BASE_ADDRESS_SPACE_IO;
}
