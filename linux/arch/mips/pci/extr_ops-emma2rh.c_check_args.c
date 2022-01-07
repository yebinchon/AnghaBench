
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; int * parent; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCI_SLOT (int) ;

__attribute__((used)) static int check_args(struct pci_bus *bus, u32 devfn, u32 * bus_num)
{

 if (bus->parent != ((void*)0))
  *bus_num = bus->number;
 else
  *bus_num = 0;

 if (*bus_num == 0) {

  if (PCI_SLOT(devfn) >= 10)
   return PCIBIOS_DEVICE_NOT_FOUND;
 } else {

  if ((*bus_num >= 64) || (PCI_SLOT(devfn) >= 16))
   return PCIBIOS_DEVICE_NOT_FOUND;
 }
 return 0;
}
