
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_phb {int msi_base; int msi_bmp; } ;
struct pci_dev {int dev; int bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;


 int ENOSPC ;
 int dev_warn (int *,char*) ;
 int msi_bitmap_alloc_hwirqs (int *,int) ;
 struct pci_controller* pci_bus_to_host (int ) ;

int pnv_cxl_alloc_hwirqs(struct pci_dev *dev, int num)
{
 struct pci_controller *hose = pci_bus_to_host(dev->bus);
 struct pnv_phb *phb = hose->private_data;
 int hwirq = msi_bitmap_alloc_hwirqs(&phb->msi_bmp, num);

 if (hwirq < 0) {
  dev_warn(&dev->dev, "Failed to find a free MSI\n");
  return -ENOSPC;
 }

 return phb->msi_base + hwirq;
}
