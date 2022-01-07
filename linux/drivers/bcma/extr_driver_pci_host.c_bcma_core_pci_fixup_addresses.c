
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int flags; } ;
struct pci_dev {struct resource* resource; int devfn; TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {scalar_t__ read; } ;


 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 scalar_t__ PCI_SLOT (int ) ;
 scalar_t__ bcma_core_pci_hostmode_read_config ;
 int pci_assign_resource (struct pci_dev*,int) ;
 int pci_name (struct pci_dev*) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static void bcma_core_pci_fixup_addresses(struct pci_dev *dev)
{
 struct resource *res;
 int pos, err;

 if (dev->bus->ops->read != bcma_core_pci_hostmode_read_config) {

  return;
 }
 if (PCI_SLOT(dev->devfn) == 0)
  return;

 pr_info("PCI: Fixing up addresses %s\n", pci_name(dev));

 for (pos = 0; pos < 6; pos++) {
  res = &dev->resource[pos];
  if (res->flags & (IORESOURCE_IO | IORESOURCE_MEM)) {
   err = pci_assign_resource(dev, pos);
   if (err)
    pr_err("PCI: Problem fixing up the addresses on %s\n",
           pci_name(dev));
  }
 }
}
