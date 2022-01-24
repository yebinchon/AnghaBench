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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct pci_dev* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

struct pci_dev *FUNC4(struct pci_dev *npdev)
{
	struct device_node *dn;
	struct pci_dev *gpdev;

	if (FUNC0(!npdev))
		return NULL;

	if (FUNC0(!npdev->dev.of_node))
		return NULL;

	/* Get assoicated PCI device */
	dn = FUNC3(npdev->dev.of_node, "ibm,gpu", 0);
	if (!dn)
		return NULL;

	gpdev = FUNC1(dn);
	FUNC2(dn);

	return gpdev;
}