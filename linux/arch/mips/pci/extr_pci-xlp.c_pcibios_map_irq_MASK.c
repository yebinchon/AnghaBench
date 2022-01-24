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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC3 (struct pci_dev const*) ; 
 int FUNC4 (struct pci_dev*) ; 

int FUNC5(const struct pci_dev *dev, u8 slot, u8 pin)
{
	struct pci_dev *lnkdev;
	int lnkfunc, node;

	/*
	 * For XLP PCIe, there is an IRQ per Link, find out which
	 * link the device is on to assign interrupts
	*/
	lnkdev = FUNC3(dev);
	if (lnkdev == NULL)
		return 0;

	lnkfunc = FUNC0(lnkdev->devfn);
	node = FUNC4(lnkdev);

	return FUNC2(node, FUNC1(lnkfunc));
}