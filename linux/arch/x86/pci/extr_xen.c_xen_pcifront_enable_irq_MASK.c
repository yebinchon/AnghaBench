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
typedef  int u8 ;
struct pci_dev {int irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_INTERRUPT_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC2 () ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int,int,int,char*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *dev)
{
	int rc;
	int share = 1;
	int pirq;
	u8 gsi;

	rc = FUNC3(dev, PCI_INTERRUPT_LINE, &gsi);
	if (rc < 0) {
		FUNC1(&dev->dev, "Xen PCI: failed to read interrupt line: %d\n",
			 rc);
		return rc;
	}
	/* In PV DomU the Xen PCI backend puts the PIRQ in the interrupt line.*/
	pirq = gsi;

	if (gsi < FUNC2())
		share = 0;

	rc = FUNC4(gsi, pirq, share, "pcifront");
	if (rc < 0) {
		FUNC1(&dev->dev, "Xen PCI: failed to bind GSI%d (PIRQ%d) to IRQ: %d\n",
			 gsi, pirq, rc);
		return rc;
	}

	dev->irq = rc;
	FUNC0(&dev->dev, "Xen PCI mapped GSI%d to IRQ%d\n", gsi, dev->irq);
	return 0;
}