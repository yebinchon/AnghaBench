
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct pci_bus {int dummy; } ;
struct TYPE_5__ {void* l; void** w; void** b; } ;
struct TYPE_4__ {TYPE_2__ config_data; int config_addr; } ;
struct TYPE_6__ {TYPE_1__ pci; } ;


 int DPRINTK (char*,int,int,void*) ;
 int PCIBIOS_SUCCESSFUL ;
 TYPE_3__* mace ;
 int mkaddr (struct pci_bus*,unsigned int,int) ;

__attribute__((used)) static int
mace_pci_write_config(struct pci_bus *bus, unsigned int devfn,
        int reg, int size, u32 val)
{
 mace->pci.config_addr = mkaddr(bus, devfn, reg);
 switch (size) {
 case 1:
  mace->pci.config_data.b[(reg & 3) ^ 3] = val;
  break;
 case 2:
  mace->pci.config_data.w[((reg >> 1) & 1) ^ 1] = val;
  break;
 case 4:
  mace->pci.config_data.l = val;
  break;
 }

 DPRINTK("write%d: reg=%08x,val=%02x\n", size * 8, reg, val);

 return PCIBIOS_SUCCESSFUL;
}
