
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_3__ {int bus_flags; } ;


 int PCI_BUS_FLAGS_NO_AERSID ;
 scalar_t__ is_vmd (TYPE_1__*) ;
 scalar_t__ pci_is_root_bus (TYPE_1__*) ;

__attribute__((used)) static void quirk_no_aersid(struct pci_dev *pdev)
{

 if (is_vmd(pdev->bus) && pci_is_root_bus(pdev->bus))
  pdev->bus->bus_flags |= PCI_BUS_FLAGS_NO_AERSID;
}
