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
struct pci_controller {int /*<<< orphan*/  bus; int /*<<< orphan*/  controller_ops; } ;
struct device_node {scalar_t__ child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_controller*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_controller*,struct device_node*,int /*<<< orphan*/ ) ; 
 struct pci_controller* FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_controller*) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct device_node*) ; 
 int /*<<< orphan*/  pseries_pci_controller_ops ; 
 int /*<<< orphan*/  FUNC9 (struct pci_controller*) ; 

struct pci_controller *FUNC10(struct device_node *dn)
{
	struct pci_controller *phb;

	FUNC8("PCI: Initializing new hotplug PHB %pOF\n", dn);

	phb = FUNC5(dn);
	if (!phb)
		return NULL;
	FUNC9(phb);
	FUNC4(phb, dn, 0);
	phb->controller_ops = pseries_pci_controller_ops;

	FUNC3(phb);

	/* Create EEH devices for the PHB */
	FUNC2(phb);

	if (dn->child)
		FUNC1(FUNC0(dn));

	FUNC7(phb);
	FUNC6(phb->bus);

	return phb;
}