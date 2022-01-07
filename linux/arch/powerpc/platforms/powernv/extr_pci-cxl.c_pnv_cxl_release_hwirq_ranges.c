
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_phb {int msi_base; int msi_bmp; } ;
struct pci_dev {int bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;
struct cxl_irq_ranges {int* offset; int * range; } ;


 int CXL_IRQ_RANGES ;
 int msi_bitmap_free_hwirqs (int *,int,int ) ;
 struct pci_controller* pci_bus_to_host (int ) ;
 int pr_devel (char*,int,int,int ) ;

void pnv_cxl_release_hwirq_ranges(struct cxl_irq_ranges *irqs,
      struct pci_dev *dev)
{
 struct pci_controller *hose = pci_bus_to_host(dev->bus);
 struct pnv_phb *phb = hose->private_data;
 int i, hwirq;

 for (i = 1; i < CXL_IRQ_RANGES; i++) {
  if (!irqs->range[i])
   continue;
  pr_devel("cxl release irq range 0x%x: offset: 0x%lx  limit: %ld\n",
    i, irqs->offset[i],
    irqs->range[i]);
  hwirq = irqs->offset[i] - phb->msi_base;
  msi_bitmap_free_hwirqs(&phb->msi_bmp, hwirq,
           irqs->range[i]);
 }
}
