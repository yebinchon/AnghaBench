
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_phb {int opal_id; } ;
struct pci_controller {struct pnv_phb* private_data; } ;


 int OPAL_ASSERT_RESET ;
 int OPAL_RESET_PCI_IODA_TABLE ;
 int opal_pci_reset (int ,int ,int ) ;

__attribute__((used)) static void pnv_pci_ioda_shutdown(struct pci_controller *hose)
{
 struct pnv_phb *phb = hose->private_data;

 opal_pci_reset(phb->opal_id, OPAL_RESET_PCI_IODA_TABLE,
         OPAL_ASSERT_RESET);
}
