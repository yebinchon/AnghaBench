
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_phb {unsigned int msi_base; int opal_id; } ;
struct pnv_ioda_pe {int pe_number; } ;
struct pci_dev {int bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;


 int EIO ;
 int ENODEV ;
 int opal_pci_set_xive_pe (int ,int ,unsigned int) ;
 struct pci_controller* pci_bus_to_host (int ) ;
 int pci_name (struct pci_dev*) ;
 int pe_warn (struct pnv_ioda_pe*,char*,int ,int,unsigned int,unsigned int,unsigned int) ;
 struct pnv_ioda_pe* pnv_ioda_get_pe (struct pci_dev*) ;
 int pnv_set_msi_irq_chip (struct pnv_phb*,unsigned int) ;

int pnv_cxl_ioda_msi_setup(struct pci_dev *dev, unsigned int hwirq,
      unsigned int virq)
{
 struct pci_controller *hose = pci_bus_to_host(dev->bus);
 struct pnv_phb *phb = hose->private_data;
 unsigned int xive_num = hwirq - phb->msi_base;
 struct pnv_ioda_pe *pe;
 int rc;

 if (!(pe = pnv_ioda_get_pe(dev)))
  return -ENODEV;


 rc = opal_pci_set_xive_pe(phb->opal_id, pe->pe_number, xive_num);
 if (rc) {
  pe_warn(pe, "%s: OPAL error %d setting msi_base 0x%x "
   "hwirq 0x%x XIVE 0x%x PE\n",
   pci_name(dev), rc, phb->msi_base, hwirq, xive_num);
  return -EIO;
 }
 pnv_set_msi_irq_chip(phb, virq);

 return 0;
}
