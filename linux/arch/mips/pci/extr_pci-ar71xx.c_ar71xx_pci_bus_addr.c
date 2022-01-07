
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;

__attribute__((used)) static inline u32 ar71xx_pci_bus_addr(struct pci_bus *bus, unsigned int devfn,
          int where)
{
 u32 ret;

 if (!bus->number) {

  ret = (1 << PCI_SLOT(devfn)) | (PCI_FUNC(devfn) << 8) |
        (where & ~3);
 } else {

  ret = (bus->number << 16) | (PCI_SLOT(devfn) << 11) |
        (PCI_FUNC(devfn) << 8) | (where & ~3) | 1;
 }

 return ret;
}
