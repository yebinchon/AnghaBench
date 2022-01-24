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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int*) ; 

int FUNC2(struct pci_dev *dev, int *hwirq)
{
	int rc;

	rc = FUNC1(dev->dev.of_node, "ibm,opal-xsl-irq", hwirq);
	if (rc) {
		FUNC0(&dev->dev,
			"Can't get translation interrupt for device\n");
		return rc;
	}
	return 0;
}