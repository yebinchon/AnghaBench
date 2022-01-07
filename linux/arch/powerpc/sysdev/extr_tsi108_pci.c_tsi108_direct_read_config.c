
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u32 ;
struct pci_controller {int dummy; } ;
struct pci_bus {int number; } ;
struct TYPE_2__ {scalar_t__ (* pci_exclude_device ) (struct pci_controller*,int ,unsigned int) ;} ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int __tsi108_read_pci_config (int,unsigned char volatile*,char*) ;
 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;
 TYPE_1__ ppc_md ;
 int printk (char*,...) ;
 scalar_t__ stub1 (struct pci_controller*,int ,unsigned int) ;
 int tsi_mk_config_addr (int ,unsigned int,int) ;

int
tsi108_direct_read_config(struct pci_bus *bus, unsigned int devfn, int offset,
     int len, u32 * val)
{
 volatile unsigned char *cfg_addr;
 struct pci_controller *hose = pci_bus_to_host(bus);
 u32 temp;

 if (ppc_md.pci_exclude_device)
  if (ppc_md.pci_exclude_device(hose, bus->number, devfn))
   return PCIBIOS_DEVICE_NOT_FOUND;

 cfg_addr = (unsigned char *)(tsi_mk_config_addr(bus->number,
       devfn,
       offset) | (offset &
           0x03));

 switch (len) {
 case 1:
  __tsi108_read_pci_config(temp, cfg_addr, "lbzx");
  break;
 case 2:
  __tsi108_read_pci_config(temp, cfg_addr, "lhbrx");
  break;
 default:
  __tsi108_read_pci_config(temp, cfg_addr, "lwbrx");
  break;
 }

 *val = temp;
 return PCIBIOS_SUCCESSFUL;
}
