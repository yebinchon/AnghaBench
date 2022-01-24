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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {scalar_t__ devfn; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned long FUNC4 (struct pci_dev*,int) ; 

__attribute__((used)) static u32 FUNC5(struct pci_dev *pdev)
{
	u32 freq;
	unsigned long io_base = FUNC4(pdev, 4);

	if (FUNC0(pdev->devfn) & 1) {
		struct pci_dev *pdev_0;

		pdev_0 = FUNC3(pdev->bus, pdev->devfn - 1);
		/* Someone hot plugged the controller on us ? */
		if (pdev_0 == NULL)
			return 0;
		io_base = FUNC4(pdev_0, 4);
		freq = FUNC1(io_base + 0x90);
		FUNC2(pdev_0);
	} else
		freq = FUNC1(io_base + 0x90);
	return freq;
}