
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {struct pci_bus* bus; } ;
struct pci_bus {scalar_t__ number; struct pci_dev* self; struct pci_bus* parent; } ;



__attribute__((used)) static struct pci_dev *xls_get_pcie_link(const struct pci_dev *dev)
{
 struct pci_bus *bus, *p;


 bus = dev->bus;
 for (p = bus->parent; p && p->number != 0; p = p->parent)
  bus = p;

 return p ? bus->self : ((void*)0);
}
