
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int cpu_to_le32 (int ) ;
 scalar_t__ pci_cfg_addr (int ,unsigned int,int) ;
 scalar_t__ pci_config_base ;

__attribute__((used)) static inline void pci_cfg_write_32bit(struct pci_bus *bus, unsigned int devfn,
 int where, u32 data)
{
 u32 *cfgaddr;

 cfgaddr = (u32 *)(pci_config_base +
   pci_cfg_addr(bus->number, devfn, where & ~3));
 *cfgaddr = cpu_to_le32(data);
}
