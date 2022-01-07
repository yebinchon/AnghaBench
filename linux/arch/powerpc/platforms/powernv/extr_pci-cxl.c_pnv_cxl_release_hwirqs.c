
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_phb {scalar_t__ msi_base; int msi_bmp; } ;
struct pci_dev {int bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;


 int msi_bitmap_free_hwirqs (int *,scalar_t__,int) ;
 struct pci_controller* pci_bus_to_host (int ) ;

void pnv_cxl_release_hwirqs(struct pci_dev *dev, int hwirq, int num)
{
 struct pci_controller *hose = pci_bus_to_host(dev->bus);
 struct pnv_phb *phb = hose->private_data;

 msi_bitmap_free_hwirqs(&phb->msi_bmp, hwirq - phb->msi_base, num);
}
