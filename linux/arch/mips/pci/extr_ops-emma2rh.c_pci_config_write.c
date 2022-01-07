
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int EMMA2RH_PCI_CONFIG_BASE ;
 int EMMA2RH_PCI_INT ;
 int EMMA2RH_PCI_IWIN0_CTR ;
 int KSEG1ADDR (int ) ;
 scalar_t__ PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_FUNC_NOT_SUPPORTED ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_FUNC (unsigned int) ;
 int RMABORT ;
 scalar_t__ check_args (struct pci_bus*,unsigned int,int*) ;
 int emma2rh_in32 (int ) ;
 int emma2rh_out32 (int ,int) ;
 scalar_t__ set_pci_configuration_address (int,unsigned int,int) ;

__attribute__((used)) static int pci_config_write(struct pci_bus *bus, unsigned int devfn, int where,
       int size, u32 val)
{
 u32 bus_num;
 u32 base = KSEG1ADDR(EMMA2RH_PCI_CONFIG_BASE);
 u32 backup_win0;
 u32 data;
 int shift;

 if (check_args(bus, devfn, &bus_num) == PCIBIOS_DEVICE_NOT_FOUND)
  return PCIBIOS_DEVICE_NOT_FOUND;

 backup_win0 = emma2rh_in32(EMMA2RH_PCI_IWIN0_CTR);

 if (set_pci_configuration_address(bus_num, devfn, where) < 0)
  return PCIBIOS_DEVICE_NOT_FOUND;


 data =
     *(volatile u32 *)(base + (PCI_FUNC(devfn) << 8) +
         (where & 0xfffffffc));

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
  emma2rh_out32(EMMA2RH_PCI_IWIN0_CTR, backup_win0);
  return PCIBIOS_FUNC_NOT_SUPPORTED;
 }
 *(volatile u32 *)(base + (PCI_FUNC(devfn) << 8) +
     (where & 0xfffffffc)) = data;

 emma2rh_out32(EMMA2RH_PCI_IWIN0_CTR, backup_win0);
 if (emma2rh_in32(EMMA2RH_PCI_INT) & RMABORT)
  return PCIBIOS_DEVICE_NOT_FOUND;

 return PCIBIOS_SUCCESSFUL;
}
