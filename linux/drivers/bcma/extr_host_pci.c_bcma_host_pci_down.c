
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_bus {scalar_t__ hosttype; int * drv_pci; int host_is_pcie2; } ;


 scalar_t__ BCMA_HOSTTYPE_PCI ;
 int bcma_core_pci_down (int *) ;

void bcma_host_pci_down(struct bcma_bus *bus)
{
 if (bus->hosttype != BCMA_HOSTTYPE_PCI)
  return;

 if (!bus->host_is_pcie2)
  bcma_core_pci_down(&bus->drv_pci[0]);
}
