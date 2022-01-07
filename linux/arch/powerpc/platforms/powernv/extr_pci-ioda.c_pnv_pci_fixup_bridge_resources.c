
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {unsigned long flags; int end; int start; int parent; } ;
struct TYPE_5__ {scalar_t__ m64_segsize; } ;
struct pnv_phb {TYPE_2__ ioda; } ;
struct pci_dev {struct resource* resource; TYPE_3__* bus; } ;
struct pci_controller {struct resource* mem_resources; struct resource io_resource; struct pnv_phb* private_data; } ;
struct pci_bus {struct pci_dev* self; } ;
struct TYPE_6__ {TYPE_1__* self; } ;
struct TYPE_4__ {TYPE_3__* bus; } ;


 unsigned long IORESOURCE_IO ;
 unsigned long IORESOURCE_MEM ;
 unsigned long IORESOURCE_PREFETCH ;
 int PCI_BRIDGE_RESOURCES ;
 int PCI_BRIDGE_RESOURCE_NUM ;
 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;
 int pci_is_root_bus (TYPE_3__*) ;
 scalar_t__ pnv_pci_is_m64 (struct pnv_phb*,struct resource*) ;

__attribute__((used)) static void pnv_pci_fixup_bridge_resources(struct pci_bus *bus,
        unsigned long type)
{
 struct pci_controller *hose = pci_bus_to_host(bus);
 struct pnv_phb *phb = hose->private_data;
 struct pci_dev *bridge = bus->self;
 struct resource *r, *w;
 bool msi_region = 0;
 int i;


 if (!pci_is_root_bus(bridge->bus) &&
     !pci_is_root_bus(bridge->bus->self->bus))
  return;


 for (i = 0; i < PCI_BRIDGE_RESOURCE_NUM; i++) {
  r = &bridge->resource[PCI_BRIDGE_RESOURCES + i];
  if (!r->flags || !r->parent)
   continue;

  w = ((void*)0);
  if (r->flags & type & IORESOURCE_IO)
   w = &hose->io_resource;
  else if (pnv_pci_is_m64(phb, r) &&
    (type & IORESOURCE_PREFETCH) &&
    phb->ioda.m64_segsize)
   w = &hose->mem_resources[1];
  else if (r->flags & type & IORESOURCE_MEM) {
   w = &hose->mem_resources[0];
   msi_region = 1;
  }

  r->start = w->start;
  r->end = w->end;
  if (msi_region) {
   r->end += 0x10000;
   r->end -= 0x100000;
  }
 }
}
