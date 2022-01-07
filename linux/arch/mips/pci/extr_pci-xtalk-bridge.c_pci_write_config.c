
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int pci_conf0_write_config (struct pci_bus*,unsigned int,int,int,int ) ;
 int pci_conf1_write_config (struct pci_bus*,unsigned int,int,int,int ) ;
 int pci_is_root_bus (struct pci_bus*) ;

__attribute__((used)) static int pci_write_config(struct pci_bus *bus, unsigned int devfn,
 int where, int size, u32 value)
{
 if (!pci_is_root_bus(bus))
  return pci_conf1_write_config(bus, devfn, where, size, value);

 return pci_conf0_write_config(bus, devfn, where, size, value);
}
