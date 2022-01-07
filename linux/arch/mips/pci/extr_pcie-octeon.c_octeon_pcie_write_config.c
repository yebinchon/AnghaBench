
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; int * parent; } ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 int BUG_ON (int) ;
 int PCIBIOS_FUNC_NOT_SUPPORTED ;
 int PCIBIOS_SUCCESSFUL ;
 int cvmx_pcie_config_write16 (unsigned int,int,unsigned int,unsigned int,int,int ) ;
 int cvmx_pcie_config_write32 (unsigned int,int,unsigned int,unsigned int,int,int ) ;
 int cvmx_pcie_config_write8 (unsigned int,int,unsigned int,unsigned int,int,int ) ;
 scalar_t__* enable_pcie_bus_num_war ;
 int pr_debug (char*,unsigned int,int,unsigned int,int,int,int ) ;

__attribute__((used)) static int octeon_pcie_write_config(unsigned int pcie_port, struct pci_bus *bus,
        unsigned int devfn, int reg,
        int size, u32 val)
{
 int bus_number = bus->number;

 BUG_ON(pcie_port >= ARRAY_SIZE(enable_pcie_bus_num_war));

 if ((bus->parent == ((void*)0)) && (enable_pcie_bus_num_war[pcie_port]))
  bus_number = 0;

 pr_debug("pcie_cfg_wr port=%d b=%d devfn=0x%03x"
   " reg=0x%03x size=%d val=%08x\n", pcie_port, bus_number, devfn,
   reg, size, val);


 switch (size) {
 case 4:
  cvmx_pcie_config_write32(pcie_port, bus_number, devfn >> 3,
      devfn & 0x7, reg, val);
  break;
 case 2:
  cvmx_pcie_config_write16(pcie_port, bus_number, devfn >> 3,
      devfn & 0x7, reg, val);
  break;
 case 1:
  cvmx_pcie_config_write8(pcie_port, bus_number, devfn >> 3,
     devfn & 0x7, reg, val);
  break;
 default:
  return PCIBIOS_FUNC_NOT_SUPPORTED;
 }
 return PCIBIOS_SUCCESSFUL;
}
