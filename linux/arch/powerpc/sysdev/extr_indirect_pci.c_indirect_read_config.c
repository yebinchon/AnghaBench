
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_controller {int dummy; } ;
struct pci_bus {int number; } ;


 int __indirect_read_config (struct pci_controller*,int ,unsigned int,int,int,int *) ;
 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;

int indirect_read_config(struct pci_bus *bus, unsigned int devfn,
    int offset, int len, u32 *val)
{
 struct pci_controller *hose = pci_bus_to_host(bus);

 return __indirect_read_config(hose, bus->number, devfn, offset, len,
          val);
}
