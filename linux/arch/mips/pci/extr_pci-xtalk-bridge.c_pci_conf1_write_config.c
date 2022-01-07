
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_bus {int number; } ;
struct TYPE_6__ {int * c; } ;
struct bridge_regs {TYPE_3__ b_type1_cfg; TYPE_2__* b_type0_cfg_dev; } ;
struct bridge_controller {struct bridge_regs* base; } ;
struct TYPE_5__ {TYPE_1__* f; } ;
struct TYPE_4__ {int * l; } ;


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
 scalar_t__ get_dbe (int,int*) ;
 int ioc3_cfg_wr (void*,int,int,int) ;
 int put_dbe (int,int*) ;

__attribute__((used)) static int pci_conf1_write_config(struct pci_bus *bus, unsigned int devfn,
      int where, int size, u32 value)
{
 struct bridge_controller *bc = BRIDGE_CONTROLLER(bus);
 struct bridge_regs *bridge = bc->base;
 int slot = PCI_SLOT(devfn);
 int fn = PCI_FUNC(devfn);
 int busno = bus->number;
 void *addr;
 u32 cf;
 int res;

 bridge_write(bc, b_pci_cfg, (busno << 16) | (slot << 11));
 addr = &bridge->b_type1_cfg.c[(fn << 8) | PCI_VENDOR_ID];
 if (get_dbe(cf, (u32 *)addr))
  return PCIBIOS_DEVICE_NOT_FOUND;





 if (cf == (PCI_VENDOR_ID_SGI | (PCI_DEVICE_ID_SGI_IOC3 << 16))) {
  addr = &bridge->b_type0_cfg_dev[slot].f[fn].l[where >> 2];
  return ioc3_cfg_wr(addr, where, size, value);
 }

 addr = &bridge->b_type1_cfg.c[(fn << 8) | (where ^ (4 - size))];

 if (size == 1)
  res = put_dbe(value, (u8 *)addr);
 else if (size == 2)
  res = put_dbe(value, (u16 *)addr);
 else
  res = put_dbe(value, (u32 *)addr);

 if (res)
  return PCIBIOS_DEVICE_NOT_FOUND;

 return PCIBIOS_SUCCESSFUL;
}
