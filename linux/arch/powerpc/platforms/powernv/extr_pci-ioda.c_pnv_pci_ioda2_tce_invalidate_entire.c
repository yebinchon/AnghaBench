
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_phb {scalar_t__ model; int opal_id; } ;


 int OPAL_PCI_TCE_KILL ;
 scalar_t__ PNV_PHB_MODEL_NPU ;
 scalar_t__ PNV_PHB_MODEL_PHB3 ;
 int opal_pci_tce_kill (int ,int ,int ,int ,int ,int ) ;
 int pnv_pci_phb3_tce_invalidate_entire (struct pnv_phb*,int) ;

void pnv_pci_ioda2_tce_invalidate_entire(struct pnv_phb *phb, bool rm)
{
 if (phb->model == PNV_PHB_MODEL_NPU || phb->model == PNV_PHB_MODEL_PHB3)
  pnv_pci_phb3_tce_invalidate_entire(phb, rm);
 else
  opal_pci_tce_kill(phb->opal_id, OPAL_PCI_TCE_KILL, 0, 0, 0, 0);
}
