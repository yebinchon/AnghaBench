
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_phb {int initialized; } ;
struct pci_dn {scalar_t__ pe_number; } ;
struct pci_dev {int bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;


 scalar_t__ IODA_INVALID_PE ;
 struct pci_controller* pci_bus_to_host (int ) ;
 struct pci_dn* pci_get_pdn (struct pci_dev*) ;

__attribute__((used)) static bool pnv_pci_enable_device_hook(struct pci_dev *dev)
{
 struct pci_controller *hose = pci_bus_to_host(dev->bus);
 struct pnv_phb *phb = hose->private_data;
 struct pci_dn *pdn;






 if (!phb->initialized)
  return 1;

 pdn = pci_get_pdn(dev);
 if (!pdn || pdn->pe_number == IODA_INVALID_PE)
  return 0;

 return 1;
}
