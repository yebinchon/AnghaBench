
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {scalar_t__ number; } ;


 int PCI_BUS_ENABLED ;
 int PCI_DEVICE_MODE ;
 int PCI_SLOT (int) ;
 int bcm1480ht_bus_status ;

__attribute__((used)) static int bcm1480ht_can_access(struct pci_bus *bus, int devfn)
{
 u32 devno;

 if (!(bcm1480ht_bus_status & (PCI_BUS_ENABLED | PCI_DEVICE_MODE)))
  return 0;

 if (bus->number == 0) {
  devno = PCI_SLOT(devfn);
  if (bcm1480ht_bus_status & PCI_DEVICE_MODE)
   return 0;
 }
 return 1;
}
