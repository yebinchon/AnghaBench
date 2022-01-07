
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_channel {int dummy; } ;
struct pci_bus {int number; int parent; struct pci_channel* sysdata; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_FUNC_NOT_SUPPORTED ;
 int PCIBIOS_SUCCESSFUL ;
 unsigned char PCI_ACCESS_READ ;
 int PCI_FUNC (unsigned int) ;
 int PCI_REG (int) ;
 int PCI_SLOT (unsigned int) ;
 int SH4A_PCIEERRFR ;
 int SH4A_PCIEPAR ;
 int SH4A_PCIEPCICONF1 ;
 int SH4A_PCIEPCTLR ;
 int SH4A_PCIEPDR ;
 scalar_t__ pci_is_root_bus (struct pci_bus*) ;
 int pci_read_reg (struct pci_channel*,int ) ;
 int pci_write_reg (struct pci_channel*,int,int ) ;

__attribute__((used)) static int sh7786_pcie_config_access(unsigned char access_type,
  struct pci_bus *bus, unsigned int devfn, int where, u32 *data)
{
 struct pci_channel *chan = bus->sysdata;
 int dev, func, type, reg;

 dev = PCI_SLOT(devfn);
 func = PCI_FUNC(devfn);
 type = !!bus->parent;
 reg = where & ~3;

 if (bus->number > 255 || dev > 31 || func > 7)
  return PCIBIOS_FUNC_NOT_SUPPORTED;
 if (pci_is_root_bus(bus)) {
  if (dev == 0) {
   if (access_type == PCI_ACCESS_READ)
    *data = pci_read_reg(chan, PCI_REG(reg));
   else
    pci_write_reg(chan, *data, PCI_REG(reg));

   return PCIBIOS_SUCCESSFUL;
  } else if (dev > 1)
   return PCIBIOS_DEVICE_NOT_FOUND;
 }


 pci_write_reg(chan, pci_read_reg(chan, SH4A_PCIEERRFR), SH4A_PCIEERRFR);


 pci_write_reg(chan, (bus->number << 24) | (dev << 19) |
    (func << 16) | reg, SH4A_PCIEPAR);


 pci_write_reg(chan, (1 << 31) | (type << 8), SH4A_PCIEPCTLR);


 if (pci_read_reg(chan, SH4A_PCIEERRFR) & 0x10)
  return PCIBIOS_DEVICE_NOT_FOUND;


 if (pci_read_reg(chan, SH4A_PCIEPCICONF1) & ((1 << 29) | (1 << 28)))
  return PCIBIOS_DEVICE_NOT_FOUND;

 if (access_type == PCI_ACCESS_READ)
  *data = pci_read_reg(chan, SH4A_PCIEPDR);
 else
  pci_write_reg(chan, *data, SH4A_PCIEPDR);


 pci_write_reg(chan, 0, SH4A_PCIEPCTLR);

 return PCIBIOS_SUCCESSFUL;
}
