
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int number; } ;


 unsigned long ARMCSR_BASE ;
 int MAX_SLOTS ;
 int PCICFG0_BASE ;
 int PCICFG1_BASE ;
 unsigned int PCI_DEVFN (int ,int ) ;
 scalar_t__ PCI_SLOT (unsigned int) ;

__attribute__((used)) static unsigned long
dc21285_base_address(struct pci_bus *bus, unsigned int devfn)
{
 unsigned long addr = 0;

 if (bus->number == 0) {
  if (PCI_SLOT(devfn) == 0)



   addr = ARMCSR_BASE;
  else {
   devfn -= 1 << 3;

   if (devfn < PCI_DEVFN(MAX_SLOTS, 0))
    addr = PCICFG0_BASE | 0xc00000 | (devfn << 8);
  }
 } else
  addr = PCICFG1_BASE | (bus->number << 16) | (devfn << 8);

 return addr;
}
