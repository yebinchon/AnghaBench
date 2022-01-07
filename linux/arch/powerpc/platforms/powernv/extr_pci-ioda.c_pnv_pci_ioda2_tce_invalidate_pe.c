
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_phb {scalar_t__ model; int opal_id; scalar_t__ regs; } ;
struct pnv_ioda_pe {int pe_number; struct pnv_phb* phb; } ;


 int OPAL_PCI_TCE_KILL_PE ;
 scalar_t__ PNV_PHB_MODEL_PHB3 ;
 int opal_pci_tce_kill (int ,int ,int ,int ,int ,int ) ;
 int pnv_pci_phb3_tce_invalidate_pe (struct pnv_ioda_pe*) ;

__attribute__((used)) static inline void pnv_pci_ioda2_tce_invalidate_pe(struct pnv_ioda_pe *pe)
{
 struct pnv_phb *phb = pe->phb;

 if (phb->model == PNV_PHB_MODEL_PHB3 && phb->regs)
  pnv_pci_phb3_tce_invalidate_pe(pe);
 else
  opal_pci_tce_kill(phb->opal_id, OPAL_PCI_TCE_KILL_PE,
      pe->pe_number, 0, 0, 0);
}
