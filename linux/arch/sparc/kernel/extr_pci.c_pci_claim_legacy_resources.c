
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {char* name; int flags; } ;
struct pci_dev {int class; int bus; } ;
struct pci_bus_region {int start; int end; } ;


 int GFP_KERNEL ;
 int IORESOURCE_BUSY ;
 int IORESOURCE_MEM ;
 int PCI_CLASS_DISPLAY_VGA ;
 int kfree (struct resource*) ;
 struct resource* kzalloc (int,int ) ;
 struct resource* pci_find_parent_resource (struct pci_dev*,struct resource*) ;
 int pci_info (struct pci_dev*,char*,struct resource*,...) ;
 int pcibios_bus_to_resource (int ,struct resource*,struct pci_bus_region*) ;
 struct resource* request_resource_conflict (struct resource*,struct resource*) ;

__attribute__((used)) static void pci_claim_legacy_resources(struct pci_dev *dev)
{
 struct pci_bus_region region;
 struct resource *p, *root, *conflict;

 if ((dev->class >> 8) != PCI_CLASS_DISPLAY_VGA)
  return;

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return;

 p->name = "Video RAM area";
 p->flags = IORESOURCE_MEM | IORESOURCE_BUSY;

 region.start = 0xa0000UL;
 region.end = region.start + 0x1ffffUL;
 pcibios_bus_to_resource(dev->bus, p, &region);

 root = pci_find_parent_resource(dev, p);
 if (!root) {
  pci_info(dev, "can't claim VGA legacy %pR: no compatible bridge window\n", p);
  goto err;
 }

 conflict = request_resource_conflict(root, p);
 if (conflict) {
  pci_info(dev, "can't claim VGA legacy %pR: address conflict with %s %pR\n",
    p, conflict->name, conflict);
  goto err;
 }

 pci_info(dev, "VGA legacy framebuffer %pR\n", p);
 return;

err:
 kfree(p);
}
