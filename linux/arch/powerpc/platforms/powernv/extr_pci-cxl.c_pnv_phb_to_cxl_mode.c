
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pnv_phb {int opal_id; } ;
struct pnv_ioda_pe {int pe_number; } ;
struct pci_dev {int dev; int bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;


 int ENODEV ;
 int OPAL_UNSUPPORTED ;
 int dev_err (int *,char*,...) ;
 int opal_pci_set_phb_cxl_mode (int ,int ,int ) ;
 struct pci_controller* pci_bus_to_host (int ) ;
 int pe_info (struct pnv_ioda_pe*,char*) ;
 struct pnv_ioda_pe* pnv_ioda_get_pe (struct pci_dev*) ;

int pnv_phb_to_cxl_mode(struct pci_dev *dev, uint64_t mode)
{
 struct pci_controller *hose = pci_bus_to_host(dev->bus);
 struct pnv_phb *phb = hose->private_data;
 struct pnv_ioda_pe *pe;
 int rc;

 pe = pnv_ioda_get_pe(dev);
 if (!pe)
  return -ENODEV;

 pe_info(pe, "Switching PHB to CXL\n");

 rc = opal_pci_set_phb_cxl_mode(phb->opal_id, mode, pe->pe_number);
 if (rc == OPAL_UNSUPPORTED)
  dev_err(&dev->dev, "Required cxl mode not supported by firmware - update skiboot\n");
 else if (rc)
  dev_err(&dev->dev, "opal_pci_set_phb_cxl_mode failed: %i\n", rc);

 return rc;
}
