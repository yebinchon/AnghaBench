
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dn {int dummy; } ;
struct eeh_dev {TYPE_1__* pe; scalar_t__ physfn; } ;
struct TYPE_2__ {int state; } ;


 int EEH_PE_CFG_BLOCKED ;
 int EEH_PE_RESET ;
 struct eeh_dev* pdn_to_eeh_dev (struct pci_dn*) ;

__attribute__((used)) static inline bool pnv_eeh_cfg_blocked(struct pci_dn *pdn)
{
 struct eeh_dev *edev = pdn_to_eeh_dev(pdn);

 if (!edev || !edev->pe)
  return 0;






 if (edev->physfn && (edev->pe->state & EEH_PE_RESET))
  return 0;

 if (edev->pe->state & EEH_PE_CFG_BLOCKED)
  return 1;

 return 0;
}
