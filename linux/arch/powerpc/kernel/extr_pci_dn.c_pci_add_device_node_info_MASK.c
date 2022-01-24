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
struct pci_dn {int busno; int devfn; int vendor_id; int device_id; int class_code; TYPE_1__* parent; int /*<<< orphan*/  list; int /*<<< orphan*/  child_list; int /*<<< orphan*/  pci_ext_config_space; int /*<<< orphan*/  pe_number; struct pci_controller* phb; } ;
struct pci_controller {int dummy; } ;
struct eeh_dev {int dummy; } ;
struct device_node {struct pci_dn* data; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  child_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IODA_INVALID_PE ; 
 TYPE_1__* FUNC1 (struct device_node*) ; 
 struct eeh_dev* FUNC2 (struct pci_dn*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dn*) ; 
 struct pci_dn* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC7 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/  const*,int) ; 

struct pci_dn *FUNC9(struct pci_controller *hose,
					struct device_node *dn)
{
	const __be32 *type = FUNC7(dn, "ibm,pci-config-space-type", NULL);
	const __be32 *regs;
	struct device_node *parent;
	struct pci_dn *pdn;
#ifdef CONFIG_EEH
	struct eeh_dev *edev;
#endif

	pdn = FUNC4(sizeof(*pdn), GFP_KERNEL);
	if (pdn == NULL)
		return NULL;
	dn->data = pdn;
	pdn->phb = hose;
	pdn->pe_number = IODA_INVALID_PE;
	regs = FUNC7(dn, "reg", NULL);
	if (regs) {
		u32 addr = FUNC8(regs, 1);

		/* First register entry is addr (00BBSS00)  */
		pdn->busno = (addr >> 16) & 0xff;
		pdn->devfn = (addr >> 8) & 0xff;
	}

	/* vendor/device IDs and class code */
	regs = FUNC7(dn, "vendor-id", NULL);
	pdn->vendor_id = regs ? FUNC8(regs, 1) : 0;
	regs = FUNC7(dn, "device-id", NULL);
	pdn->device_id = regs ? FUNC8(regs, 1) : 0;
	regs = FUNC7(dn, "class-code", NULL);
	pdn->class_code = regs ? FUNC8(regs, 1) : 0;

	/* Extended config space */
	pdn->pci_ext_config_space = (type && FUNC8(type, 1) == 1);

	/* Create EEH device */
#ifdef CONFIG_EEH
	edev = eeh_dev_init(pdn);
	if (!edev) {
		kfree(pdn);
		return NULL;
	}
#endif

	/* Attach to parent node */
	FUNC0(&pdn->child_list);
	FUNC0(&pdn->list);
	parent = FUNC6(dn);
	pdn->parent = parent ? FUNC1(parent) : NULL;
	if (pdn->parent)
		FUNC5(&pdn->list, &pdn->parent->child_list);

	return pdn;
}