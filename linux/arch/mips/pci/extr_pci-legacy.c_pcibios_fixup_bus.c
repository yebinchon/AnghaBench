
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int class; } ;
struct pci_bus {struct pci_dev* self; } ;


 int PCI_CLASS_BRIDGE_PCI ;
 int PCI_PROBE_ONLY ;
 scalar_t__ pci_has_flag (int ) ;
 int pci_read_bridge_bases (struct pci_bus*) ;

void pcibios_fixup_bus(struct pci_bus *bus)
{
 struct pci_dev *dev = bus->self;

 if (pci_has_flag(PCI_PROBE_ONLY) && dev &&
     (dev->class >> 8) == PCI_CLASS_BRIDGE_PCI) {
  pci_read_bridge_bases(bus);
 }
}
