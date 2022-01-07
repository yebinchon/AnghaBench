
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct pnv_ioda_pe* pe_array; } ;
struct pnv_phb {TYPE_1__ ioda; } ;
struct pnv_ioda_pe {scalar_t__ device_count; } ;
struct pci_dn {size_t pe_number; } ;
struct pci_dev {scalar_t__ is_virtfn; int bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;


 size_t IODA_INVALID_PE ;
 int WARN_ON (int) ;
 struct pci_controller* pci_bus_to_host (int ) ;
 struct pci_dn* pci_get_pdn (struct pci_dev*) ;
 int pnv_ioda_release_pe (struct pnv_ioda_pe*) ;

__attribute__((used)) static void pnv_pci_release_device(struct pci_dev *pdev)
{
 struct pci_controller *hose = pci_bus_to_host(pdev->bus);
 struct pnv_phb *phb = hose->private_data;
 struct pci_dn *pdn = pci_get_pdn(pdev);
 struct pnv_ioda_pe *pe;

 if (pdev->is_virtfn)
  return;

 if (!pdn || pdn->pe_number == IODA_INVALID_PE)
  return;
 pe = &phb->ioda.pe_array[pdn->pe_number];
 pdn->pe_number = IODA_INVALID_PE;

 WARN_ON(--pe->device_count < 0);
 if (pe->device_count == 0)
  pnv_ioda_release_pe(pe);
}
