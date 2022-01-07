
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pci_bus {int number; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_FUNC_NOT_SUPPORTED ;
 int PCIBIOS_SUCCESSFUL ;
 int PCICONFDREG ;
 int readl (int ) ;
 scalar_t__ set_pci_configuration_address (int ,unsigned int,int) ;
 int writel (int,int ) ;

__attribute__((used)) static int pci_config_write(struct pci_bus *bus, unsigned int devfn, int where,
       int size, uint32_t val)
{
 uint32_t data;
 int shift;

 if (set_pci_configuration_address(bus->number, devfn, where) < 0)
  return PCIBIOS_DEVICE_NOT_FOUND;

 data = readl(PCICONFDREG);

 switch (size) {
 case 1:
  shift = (where & 3) << 3;
  data &= ~(0xffU << shift);
  data |= ((val & 0xffU) << shift);
  break;
 case 2:
  shift = (where & 2) << 3;
  data &= ~(0xffffU << shift);
  data |= ((val & 0xffffU) << shift);
  break;
 case 4:
  data = val;
  break;
 default:
  return PCIBIOS_FUNC_NOT_SUPPORTED;
 }

 writel(data, PCICONFDREG);

 return PCIBIOS_SUCCESSFUL;
}
