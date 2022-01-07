
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_3__ {struct pnv_ioda_pe* pe_array; } ;
struct pnv_phb {int (* freeze_pe ) (struct pnv_phb*,size_t) ;TYPE_1__ ioda; } ;
struct pnv_ioda_pe {int flags; size_t pe_number; struct pnv_ioda_pe* master; } ;
struct pci_controller {struct pnv_phb* private_data; } ;
struct eeh_pe {int state; int type; size_t addr; struct eeh_pe* parent; } ;
struct TYPE_4__ {int (* get_state ) (struct eeh_pe*,int *) ;} ;


 int EEH_PE_ISOLATED ;
 int EEH_PE_PHB ;
 int EEXIST ;
 int PNV_IODA_PE_MASTER ;
 int PNV_IODA_PE_SLAVE ;
 int WARN_ON (int) ;
 TYPE_2__* eeh_ops ;
 struct eeh_pe* eeh_pe_get (struct pci_controller*,size_t,int ) ;
 scalar_t__ eeh_state_active (int) ;
 int stub1 (struct pnv_phb*,size_t) ;
 int stub2 (struct eeh_pe*,int *) ;
 int stub3 (struct pnv_phb*,size_t) ;

__attribute__((used)) static int pnv_eeh_get_pe(struct pci_controller *hose,
     u16 pe_no, struct eeh_pe **pe)
{
 struct pnv_phb *phb = hose->private_data;
 struct pnv_ioda_pe *pnv_pe;
 struct eeh_pe *dev_pe;






 pnv_pe = &phb->ioda.pe_array[pe_no];
 if (pnv_pe->flags & PNV_IODA_PE_SLAVE) {
  pnv_pe = pnv_pe->master;
  WARN_ON(!pnv_pe ||
   !(pnv_pe->flags & PNV_IODA_PE_MASTER));
  pe_no = pnv_pe->pe_number;
 }


 dev_pe = eeh_pe_get(hose, pe_no, 0);
 if (!dev_pe)
  return -EEXIST;


 *pe = dev_pe;
 if (!(dev_pe->state & EEH_PE_ISOLATED))
  phb->freeze_pe(phb, pe_no);






 dev_pe = dev_pe->parent;
 while (dev_pe && !(dev_pe->type & EEH_PE_PHB)) {
  int ret;
  ret = eeh_ops->get_state(dev_pe, ((void*)0));
  if (ret <= 0 || eeh_state_active(ret)) {
   dev_pe = dev_pe->parent;
   continue;
  }


  *pe = dev_pe;
  if (!(dev_pe->state & EEH_PE_ISOLATED))
   phb->freeze_pe(phb, dev_pe->addr);


  dev_pe = dev_pe->parent;
 }

 return 0;
}
