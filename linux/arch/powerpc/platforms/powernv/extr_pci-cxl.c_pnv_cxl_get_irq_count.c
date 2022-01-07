
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_count; } ;
struct pnv_phb {TYPE_1__ msi_bmp; } ;
struct pci_dev {int bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;


 struct pci_controller* pci_bus_to_host (int ) ;

int pnv_cxl_get_irq_count(struct pci_dev *dev)
{
 struct pci_controller *hose = pci_bus_to_host(dev->bus);
 struct pnv_phb *phb = hose->private_data;

 return phb->msi_bmp.irq_count;
}
