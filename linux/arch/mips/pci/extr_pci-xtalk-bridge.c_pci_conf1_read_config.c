
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_bus {int number; } ;
struct TYPE_2__ {int * c; } ;
struct bridge_regs {TYPE_1__ b_type1_cfg; } ;
struct bridge_controller {struct bridge_regs* base; } ;


 struct bridge_controller* BRIDGE_CONTROLLER (struct pci_bus*) ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_DEVICE_ID_SGI_IOC3 ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int PCI_VENDOR_ID ;
 int PCI_VENDOR_ID_SGI ;
 int b_pci_cfg ;
 int bridge_write (struct bridge_controller*,int ,int) ;
 int get_dbe (int,int*) ;
 int ioc3_cfg_rd (void*,int,int,int*) ;

__attribute__((used)) static int pci_conf1_read_config(struct pci_bus *bus, unsigned int devfn,
     int where, int size, u32 *value)
{
 struct bridge_controller *bc = BRIDGE_CONTROLLER(bus);
 struct bridge_regs *bridge = bc->base;
 int busno = bus->number;
 int slot = PCI_SLOT(devfn);
 int fn = PCI_FUNC(devfn);
 void *addr;
 u32 cf;
 int res;

 bridge_write(bc, b_pci_cfg, (busno << 16) | (slot << 11));
 addr = &bridge->b_type1_cfg.c[(fn << 8) | PCI_VENDOR_ID];
 if (get_dbe(cf, (u32 *)addr))
  return PCIBIOS_DEVICE_NOT_FOUND;





 if (cf == (PCI_VENDOR_ID_SGI | (PCI_DEVICE_ID_SGI_IOC3 << 16))) {
  addr = &bridge->b_type1_cfg.c[(fn << 8) | (where & ~3)];
  return ioc3_cfg_rd(addr, where, size, value);
 }

 addr = &bridge->b_type1_cfg.c[(fn << 8) | (where ^ (4 - size))];

 if (size == 1)
  res = get_dbe(*value, (u8 *)addr);
 else if (size == 2)
  res = get_dbe(*value, (u16 *)addr);
 else
  res = get_dbe(*value, (u32 *)addr);

 return res ? PCIBIOS_DEVICE_NOT_FOUND : PCIBIOS_SUCCESSFUL;
}
