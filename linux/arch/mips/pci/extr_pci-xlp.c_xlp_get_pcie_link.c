
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {struct pci_bus* bus; } ;
struct pci_bus {scalar_t__ number; struct pci_dev* self; struct pci_bus* parent; } ;


 scalar_t__ cpu_is_xlp9xx () ;

struct pci_dev *xlp_get_pcie_link(const struct pci_dev *dev)
{
 struct pci_bus *bus, *p;

 bus = dev->bus;

 if (cpu_is_xlp9xx()) {

  for (p = bus->parent; p && p->parent && p->parent->number != 0;
    p = p->parent)
   bus = p;
  return (p && p->parent) ? bus->self : ((void*)0);
 } else {

  for (p = bus->parent; p && p->number != 0; p = p->parent)
   bus = p;

  return p ? bus->self : ((void*)0);
 }
}
