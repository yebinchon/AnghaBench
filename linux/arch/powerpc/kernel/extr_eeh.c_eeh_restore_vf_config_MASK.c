#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pci_dn {int /*<<< orphan*/  mps; } ;
struct eeh_dev {scalar_t__ aer_cap; scalar_t__ pcie_cap; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_config ) (struct pci_dn*,scalar_t__,int,int) ;int /*<<< orphan*/  (* read_config ) (struct pci_dn*,scalar_t__,int,int*) ;} ;

/* Variables and functions */
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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct eeh_dev* FUNC1 (struct pci_dn*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dn*,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dn*,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dn*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dn*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dn*,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dn*,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dn*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dn*,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dn*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dn*,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dn*,scalar_t__,int,int) ; 

int FUNC13(struct pci_dn *pdn)
{
	struct eeh_dev *edev = FUNC1(pdn);
	u32 devctl, cmd, cap2, aer_capctl;
	int old_mps;

	if (edev->pcie_cap) {
		/* Restore MPS */
		old_mps = (FUNC0(pdn->mps) - 8) << 5;
		eeh_ops->read_config(pdn, edev->pcie_cap + PCI_EXP_DEVCTL,
				     2, &devctl);
		devctl &= ~PCI_EXP_DEVCTL_PAYLOAD;
		devctl |= old_mps;
		eeh_ops->write_config(pdn, edev->pcie_cap + PCI_EXP_DEVCTL,
				      2, devctl);

		/* Disable Completion Timeout if possible */
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

	/* Enable SERR and parity checking */
	eeh_ops->read_config(pdn, PCI_COMMAND, 2, &cmd);
	cmd |= (PCI_COMMAND_PARITY | PCI_COMMAND_SERR);
	eeh_ops->write_config(pdn, PCI_COMMAND, 2, cmd);

	/* Enable report various errors */
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

	/* Enable ECRC generation and check */
	if (edev->pcie_cap && edev->aer_cap) {
		eeh_ops->read_config(pdn, edev->aer_cap + PCI_ERR_CAP,
				     4, &aer_capctl);
		aer_capctl |= (PCI_ERR_CAP_ECRC_GENE | PCI_ERR_CAP_ECRC_CHKE);
		eeh_ops->write_config(pdn, edev->aer_cap + PCI_ERR_CAP,
				      4, aer_capctl);
	}

	return 0;
}