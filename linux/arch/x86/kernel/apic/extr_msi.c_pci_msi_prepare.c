
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_5__ {scalar_t__ is_msix; } ;
struct msi_desc {TYPE_1__ msi_attrib; } ;
struct irq_domain {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int flags; int type; struct pci_dev* msi_dev; } ;
typedef TYPE_2__ msi_alloc_info_t ;


 int X86_IRQ_ALLOC_CONTIGUOUS_VECTORS ;
 int X86_IRQ_ALLOC_TYPE_MSI ;
 int X86_IRQ_ALLOC_TYPE_MSIX ;
 struct msi_desc* first_pci_msi_entry (struct pci_dev*) ;
 int init_irq_alloc_info (TYPE_2__*,int *) ;
 struct pci_dev* to_pci_dev (struct device*) ;

int pci_msi_prepare(struct irq_domain *domain, struct device *dev, int nvec,
      msi_alloc_info_t *arg)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct msi_desc *desc = first_pci_msi_entry(pdev);

 init_irq_alloc_info(arg, ((void*)0));
 arg->msi_dev = pdev;
 if (desc->msi_attrib.is_msix) {
  arg->type = X86_IRQ_ALLOC_TYPE_MSIX;
 } else {
  arg->type = X86_IRQ_ALLOC_TYPE_MSI;
  arg->flags |= X86_IRQ_ALLOC_CONTIGUOUS_VECTORS;
 }

 return 0;
}
