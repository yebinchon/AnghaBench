
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dn {int dummy; } ;
struct eeh_dev {scalar_t__ af_cap; } ;
struct TYPE_2__ {int (* write_config ) (struct pci_dn*,scalar_t__,int,int ) ;int (* read_config ) (struct pci_dn*,scalar_t__,int,int*) ;} ;


 int EEH_PE_RST_HOLD_TIME ;
 int EEH_PE_RST_SETTLE_TIME ;



 int ENOTTY ;
 scalar_t__ PCI_AF_CAP ;
 int PCI_AF_CAP_FLR ;
 int PCI_AF_CAP_TP ;
 scalar_t__ PCI_AF_CTRL ;
 int PCI_AF_CTRL_FLR ;
 int PCI_AF_STATUS_TP ;
 scalar_t__ WARN_ON (int) ;
 TYPE_1__* eeh_ops ;
 int msleep (int ) ;
 struct eeh_dev* pdn_to_eeh_dev (struct pci_dn*) ;
 int pnv_eeh_wait_for_pending (struct pci_dn*,char*,scalar_t__,int) ;
 int stub1 (struct pci_dn*,scalar_t__,int,int*) ;
 int stub2 (struct pci_dn*,scalar_t__,int,int ) ;
 int stub3 (struct pci_dn*,scalar_t__,int,int ) ;

__attribute__((used)) static int pnv_eeh_do_af_flr(struct pci_dn *pdn, int option)
{
 struct eeh_dev *edev = pdn_to_eeh_dev(pdn);
 u32 cap = 0;

 if (WARN_ON(!edev->af_cap))
  return -ENOTTY;

 eeh_ops->read_config(pdn, edev->af_cap + PCI_AF_CAP, 1, &cap);
 if (!(cap & PCI_AF_CAP_TP) || !(cap & PCI_AF_CAP_FLR))
  return -ENOTTY;

 switch (option) {
 case 128:
 case 129:





  pnv_eeh_wait_for_pending(pdn, "AF",
      edev->af_cap + PCI_AF_CTRL,
      PCI_AF_STATUS_TP << 8);
  eeh_ops->write_config(pdn, edev->af_cap + PCI_AF_CTRL,
          1, PCI_AF_CTRL_FLR);
  msleep(EEH_PE_RST_HOLD_TIME);
  break;
 case 130:
  eeh_ops->write_config(pdn, edev->af_cap + PCI_AF_CTRL, 1, 0);
  msleep(EEH_PE_RST_SETTLE_TIME);
  break;
 }

 return 0;
}
