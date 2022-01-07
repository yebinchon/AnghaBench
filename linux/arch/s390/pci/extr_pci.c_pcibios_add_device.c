
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int flags; scalar_t__ parent; } ;
struct TYPE_2__ {int * dma_ops; int groups; } ;
struct pci_dev {int no_vf_scan; struct resource* resource; TYPE_1__ dev; scalar_t__ is_physfn; } ;


 int PCI_BAR_COUNT ;
 int pci_claim_resource (struct pci_dev*,int) ;
 int s390_pci_dma_ops ;
 int zpci_attr_groups ;
 int zpci_map_resources (struct pci_dev*) ;

int pcibios_add_device(struct pci_dev *pdev)
{
 struct resource *res;
 int i;

 if (pdev->is_physfn)
  pdev->no_vf_scan = 1;

 pdev->dev.groups = zpci_attr_groups;
 pdev->dev.dma_ops = &s390_pci_dma_ops;
 zpci_map_resources(pdev);

 for (i = 0; i < PCI_BAR_COUNT; i++) {
  res = &pdev->resource[i];
  if (res->parent || !res->flags)
   continue;
  pci_claim_resource(pdev, i);
 }

 return 0;
}
