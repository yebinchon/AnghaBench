
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dn {struct pci_controller* phb; } ;
struct pci_controller {scalar_t__ buid; } ;
struct eeh_dev {int dummy; } ;
struct TYPE_2__ {int (* probe ) (struct pci_dn*,int *) ;} ;


 int EEH_PROBE_MODE_DEVTREE ;
 scalar_t__ eeh_has_flag (int ) ;
 TYPE_1__* eeh_ops ;
 struct eeh_dev* pdn_to_eeh_dev (struct pci_dn*) ;
 int stub1 (struct pci_dn*,int *) ;

void eeh_add_device_early(struct pci_dn *pdn)
{
 struct pci_controller *phb = pdn ? pdn->phb : ((void*)0);
 struct eeh_dev *edev = pdn_to_eeh_dev(pdn);

 if (!edev)
  return;

 if (!eeh_has_flag(EEH_PROBE_MODE_DEVTREE))
  return;


 if (((void*)0) == phb ||
     (eeh_has_flag(EEH_PROBE_MODE_DEVTREE) && 0 == phb->buid))
  return;

 eeh_ops->probe(pdn, ((void*)0));
}
