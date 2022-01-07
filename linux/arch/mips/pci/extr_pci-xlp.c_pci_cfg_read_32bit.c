
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_bus {scalar_t__ number; TYPE_1__* parent; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 scalar_t__ cpu_is_xlp9xx () ;
 int nlm_node_present (int ) ;
 scalar_t__ pci_cfg_addr (scalar_t__,unsigned int,int) ;
 scalar_t__ pci_config_base ;

__attribute__((used)) static inline u32 pci_cfg_read_32bit(struct pci_bus *bus, unsigned int devfn,
 int where)
{
 u32 data;
 u32 *cfgaddr;

 where &= ~3;
 if (cpu_is_xlp9xx()) {

  if (bus->number == 0) {

   if (PCI_SLOT(devfn) != 0 ||
        !nlm_node_present(PCI_FUNC(devfn)))
    return 0xffffffff;
  } else if (bus->parent->number == 0) {
   if (PCI_SLOT(devfn) == 0)
    return 0xffffffff;
   if (devfn == 44)
    return 0xffffffff;
  }
 } else if (bus->number == 0 && PCI_SLOT(devfn) == 1 && where == 0x954) {
  return 0xffffffff;
 }
 cfgaddr = (u32 *)(pci_config_base +
   pci_cfg_addr(bus->number, devfn, where));
 data = *cfgaddr;
 return data;
}
