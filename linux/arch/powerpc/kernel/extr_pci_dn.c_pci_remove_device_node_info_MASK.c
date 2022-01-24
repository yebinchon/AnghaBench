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
struct pci_dn {int /*<<< orphan*/  flags; int /*<<< orphan*/  devfn; int /*<<< orphan*/  busno; TYPE_1__* phb; int /*<<< orphan*/  list; int /*<<< orphan*/  child_list; } ;
struct pci_dev {int dummy; } ;
struct eeh_dev {int /*<<< orphan*/ * pdn; } ;
struct device_node {int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int /*<<< orphan*/  global_number; } ;

/* Variables and functions */
 struct pci_dn* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  PCI_DN_FLAG_DEAD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 struct pci_dev* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct eeh_dev* FUNC10 (struct pci_dn*) ; 

void FUNC11(struct device_node *dn)
{
	struct pci_dn *pdn = dn ? FUNC0(dn) : NULL;
	struct device_node *parent;
	struct pci_dev *pdev;
#ifdef CONFIG_EEH
	struct eeh_dev *edev = pdn_to_eeh_dev(pdn);

	if (edev)
		edev->pdn = NULL;
#endif

	if (!pdn)
		return;

	FUNC1(!FUNC4(&pdn->child_list));
	FUNC3(&pdn->list);

	/* Drop the parent pci_dn's ref to our backing dt node */
	parent = FUNC5(dn);
	if (parent)
		FUNC6(parent);

	/*
	 * At this point we *might* still have a pci_dev that was
	 * instantiated from this pci_dn. So defer free()ing it until
	 * the pci_dev's release function is called.
	 */
	pdev = FUNC9(pdn->phb->global_number,
			pdn->busno, pdn->devfn);
	if (pdev) {
		/* NB: pdev has a ref to dn */
		FUNC7(pdev, "marked pdn (from %pOF) as dead\n", dn);
		pdn->flags |= PCI_DN_FLAG_DEAD;
	} else {
		dn->data = NULL;
		FUNC2(pdn);
	}

	FUNC8(pdev);
}