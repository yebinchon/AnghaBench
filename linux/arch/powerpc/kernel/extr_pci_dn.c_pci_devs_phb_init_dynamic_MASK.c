#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pci_dn {int devfn; int busno; struct pci_controller* phb; scalar_t__ class_code; scalar_t__ device_id; scalar_t__ vendor_id; } ;
struct pci_controller {struct pci_dn* pci_data; struct device_node* dn; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  add_pdn ; 
 struct pci_dn* FUNC0 (struct pci_controller*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int /*<<< orphan*/ ,struct pci_controller*) ; 

void FUNC2(struct pci_controller *phb)
{
	struct device_node *dn = phb->dn;
	struct pci_dn *pdn;

	/* PHB nodes themselves must not match */
	pdn = FUNC0(phb, dn);
	if (pdn) {
		pdn->devfn = pdn->busno = -1;
		pdn->vendor_id = pdn->device_id = pdn->class_code = 0;
		pdn->phb = phb;
		phb->pci_data = pdn;
	}

	/* Update dn->phb ptrs for new phb and children devices */
	FUNC1(dn, add_pdn, phb);
}