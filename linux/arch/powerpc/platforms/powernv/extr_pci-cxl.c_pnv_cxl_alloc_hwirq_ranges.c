
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_phb {scalar_t__ msi_base; int msi_bmp; } ;
struct pci_dev {int bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;
struct cxl_irq_ranges {int* range; scalar_t__* offset; } ;


 int CXL_IRQ_RANGES ;
 int ENOSPC ;
 int memset (struct cxl_irq_ranges*,int ,int) ;
 int msi_bitmap_alloc_hwirqs (int *,int) ;
 struct pci_controller* pci_bus_to_host (int ) ;
 int pnv_cxl_release_hwirq_ranges (struct cxl_irq_ranges*,struct pci_dev*) ;
 int pr_devel (char*,int,scalar_t__,int) ;

int pnv_cxl_alloc_hwirq_ranges(struct cxl_irq_ranges *irqs,
          struct pci_dev *dev, int num)
{
 struct pci_controller *hose = pci_bus_to_host(dev->bus);
 struct pnv_phb *phb = hose->private_data;
 int i, hwirq, try;

 memset(irqs, 0, sizeof(struct cxl_irq_ranges));


 for (i = 1; i < CXL_IRQ_RANGES && num; i++) {
  try = num;
  while (try) {
   hwirq = msi_bitmap_alloc_hwirqs(&phb->msi_bmp, try);
   if (hwirq >= 0)
    break;
   try /= 2;
  }
  if (!try)
   goto fail;

  irqs->offset[i] = phb->msi_base + hwirq;
  irqs->range[i] = try;
  pr_devel("cxl alloc irq range 0x%x: offset: 0x%lx  limit: %li\n",
    i, irqs->offset[i], irqs->range[i]);
  num -= try;
 }
 if (num)
  goto fail;

 return 0;
fail:
 pnv_cxl_release_hwirq_ranges(irqs, dev);
 return -ENOSPC;
}
