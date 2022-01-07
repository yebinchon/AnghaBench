
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dn {int mps; } ;
struct eeh_dev {scalar_t__ aer_cap; scalar_t__ pcie_cap; } ;
struct TYPE_2__ {int (* write_config ) (struct pci_dn*,scalar_t__,int,int) ;int (* read_config ) (struct pci_dn*,scalar_t__,int,int*) ;} ;


 scalar_t__ PCI_COMMAND ;
 int PCI_COMMAND_PARITY ;
 int PCI_COMMAND_SERR ;
 scalar_t__ PCI_ERR_CAP ;
 int PCI_ERR_CAP_ECRC_CHKE ;
 int PCI_ERR_CAP_ECRC_GENE ;
 scalar_t__ PCI_EXP_DEVCAP2 ;
 int PCI_EXP_DEVCAP2_COMP_TMOUT_DIS ;
 scalar_t__ PCI_EXP_DEVCTL ;
 scalar_t__ PCI_EXP_DEVCTL2 ;
 int PCI_EXP_DEVCTL2_COMP_TMOUT_DIS ;
 int PCI_EXP_DEVCTL_CERE ;
 int PCI_EXP_DEVCTL_FERE ;
 int PCI_EXP_DEVCTL_NFERE ;
 int PCI_EXP_DEVCTL_PAYLOAD ;
 int PCI_EXP_DEVCTL_URRE ;
 TYPE_1__* eeh_ops ;
 int ffs (int ) ;
 struct eeh_dev* pdn_to_eeh_dev (struct pci_dn*) ;
 int stub1 (struct pci_dn*,scalar_t__,int,int*) ;
 int stub10 (struct pci_dn*,scalar_t__,int,int*) ;
 int stub11 (struct pci_dn*,scalar_t__,int,int) ;
 int stub2 (struct pci_dn*,scalar_t__,int,int) ;
 int stub3 (struct pci_dn*,scalar_t__,int,int*) ;
 int stub4 (struct pci_dn*,scalar_t__,int,int*) ;
 int stub5 (struct pci_dn*,scalar_t__,int,int) ;
 int stub6 (struct pci_dn*,scalar_t__,int,int*) ;
 int stub7 (struct pci_dn*,scalar_t__,int,int) ;
 int stub8 (struct pci_dn*,scalar_t__,int,int*) ;
 int stub9 (struct pci_dn*,scalar_t__,int,int) ;

int eeh_restore_vf_config(struct pci_dn *pdn)
{
 struct eeh_dev *edev = pdn_to_eeh_dev(pdn);
 u32 devctl, cmd, cap2, aer_capctl;
 int old_mps;

 if (edev->pcie_cap) {

  old_mps = (ffs(pdn->mps) - 8) << 5;
  eeh_ops->read_config(pdn, edev->pcie_cap + PCI_EXP_DEVCTL,
         2, &devctl);
  devctl &= ~PCI_EXP_DEVCTL_PAYLOAD;
  devctl |= old_mps;
  eeh_ops->write_config(pdn, edev->pcie_cap + PCI_EXP_DEVCTL,
          2, devctl);


  eeh_ops->read_config(pdn, edev->pcie_cap + PCI_EXP_DEVCAP2,
         4, &cap2);
  if (cap2 & PCI_EXP_DEVCAP2_COMP_TMOUT_DIS) {
   eeh_ops->read_config(pdn,
          edev->pcie_cap + PCI_EXP_DEVCTL2,
          4, &cap2);
   cap2 |= PCI_EXP_DEVCTL2_COMP_TMOUT_DIS;
   eeh_ops->write_config(pdn,
           edev->pcie_cap + PCI_EXP_DEVCTL2,
           4, cap2);
  }
 }


 eeh_ops->read_config(pdn, PCI_COMMAND, 2, &cmd);
 cmd |= (PCI_COMMAND_PARITY | PCI_COMMAND_SERR);
 eeh_ops->write_config(pdn, PCI_COMMAND, 2, cmd);


 if (edev->pcie_cap) {
  eeh_ops->read_config(pdn, edev->pcie_cap + PCI_EXP_DEVCTL,
         2, &devctl);
  devctl &= ~PCI_EXP_DEVCTL_CERE;
  devctl |= (PCI_EXP_DEVCTL_NFERE |
      PCI_EXP_DEVCTL_FERE |
      PCI_EXP_DEVCTL_URRE);
  eeh_ops->write_config(pdn, edev->pcie_cap + PCI_EXP_DEVCTL,
          2, devctl);
 }


 if (edev->pcie_cap && edev->aer_cap) {
  eeh_ops->read_config(pdn, edev->aer_cap + PCI_ERR_CAP,
         4, &aer_capctl);
  aer_capctl |= (PCI_ERR_CAP_ECRC_GENE | PCI_ERR_CAP_ECRC_CHKE);
  eeh_ops->write_config(pdn, edev->aer_cap + PCI_ERR_CAP,
          4, aer_capctl);
 }

 return 0;
}
