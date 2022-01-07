
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 scalar_t__ orion5x_pci_cardbus_mode ;
 int orion5x_pci_local_bus_nr () ;

__attribute__((used)) static int orion5x_pci_valid_config(int bus, u32 devfn)
{
 if (bus == orion5x_pci_local_bus_nr()) {



  if (PCI_SLOT(devfn) == 0 && PCI_FUNC(devfn) != 0)
   return 0;





  if (orion5x_pci_cardbus_mode && PCI_SLOT(devfn) > 1)
   return 0;
 }

 return 1;
}
