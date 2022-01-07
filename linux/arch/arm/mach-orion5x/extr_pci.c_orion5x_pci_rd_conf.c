
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCI_FUNC (int) ;
 int PCI_SLOT (int) ;
 int orion5x_pci_hw_rd_conf (int ,int ,int ,int,int,int*) ;
 int orion5x_pci_valid_config (int ,int) ;

__attribute__((used)) static int orion5x_pci_rd_conf(struct pci_bus *bus, u32 devfn,
    int where, int size, u32 *val)
{
 if (!orion5x_pci_valid_config(bus->number, devfn)) {
  *val = 0xffffffff;
  return PCIBIOS_DEVICE_NOT_FOUND;
 }

 return orion5x_pci_hw_rd_conf(bus->number, PCI_SLOT(devfn),
     PCI_FUNC(devfn), where, size, val);
}
