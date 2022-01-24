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
struct device {int /*<<< orphan*/  fwnode; } ;
struct pci_bus {struct device dev; struct pci_bus* parent; } ;
struct acpi_iort_node {int dummy; } ;
struct TYPE_2__ {struct pci_bus* bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_IORT_NODE_NAMED_COMPONENT ; 
 int /*<<< orphan*/  ACPI_IORT_NODE_PCI_ROOT_COMPLEX ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct acpi_iort_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iort_match_node_callback ; 
 struct acpi_iort_node* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_bus*) ; 
 TYPE_1__* FUNC4 (struct device*) ; 

__attribute__((used)) static struct acpi_iort_node *FUNC5(struct device *dev)
{
	struct pci_bus *pbus;

	if (!FUNC0(dev)) {
		struct acpi_iort_node *node;
		/*
		 * scan iort_fwnode_list to see if it's an iort platform
		 * device (such as SMMU, PMCG),its iort node already cached
		 * and associated with fwnode when iort platform devices
		 * were initialized.
		 */
		node = FUNC1(dev->fwnode);
		if (node)
			return node;

		/*
		 * if not, then it should be a platform device defined in
		 * DSDT/SSDT (with Named Component node in IORT)
		 */
		return FUNC2(ACPI_IORT_NODE_NAMED_COMPONENT,
				      iort_match_node_callback, dev);
	}

	/* Find a PCI root bus */
	pbus = FUNC4(dev)->bus;
	while (!FUNC3(pbus))
		pbus = pbus->parent;

	return FUNC2(ACPI_IORT_NODE_PCI_ROOT_COMPLEX,
			      iort_match_node_callback, &pbus->dev);
}