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
 struct device_node* FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

struct pci_dev *FUNC4(struct pci_dev *gpdev, int index)
{
	struct device_node *dn;
	struct pci_dev *npdev;

	if (FUNC0(!gpdev))
		return NULL;

	/* Not all PCI devices have device-tree nodes */
	if (!gpdev->dev.of_node)
		return NULL;

	/* Get assoicated PCI device */
	dn = FUNC3(gpdev->dev.of_node, "ibm,npu", index);
	if (!dn)
		return NULL;

	npdev = FUNC1(dn);
	FUNC2(dn);

	return npdev;
}