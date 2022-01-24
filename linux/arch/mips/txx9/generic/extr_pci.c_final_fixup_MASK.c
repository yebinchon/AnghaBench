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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  PCI_BIST ; 
 unsigned char PCI_BIST_CAPABLE ; 
 unsigned char PCI_BIST_CODE_MASK ; 
 unsigned char PCI_BIST_START ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 scalar_t__ FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *dev)
{
	unsigned char bist;

	/* Do build-in self test */
	if (FUNC1(dev, PCI_BIST, &bist) == PCIBIOS_SUCCESSFUL &&
	    (bist & PCI_BIST_CAPABLE)) {
		unsigned long timeout;
		FUNC2(dev, PCI_D0);
		FUNC5("PCI: %s BIST...", FUNC0(dev));
		FUNC3(dev, PCI_BIST, PCI_BIST_START);
		timeout = jiffies + HZ * 2;	/* timeout after 2 sec */
		do {
			FUNC1(dev, PCI_BIST, &bist);
			if (FUNC6(jiffies, timeout))
				break;
		} while (bist & PCI_BIST_START);
		if (bist & (PCI_BIST_CODE_MASK | PCI_BIST_START))
			FUNC4("failed. (0x%x)\n", bist);
		else
			FUNC4("OK.\n");
	}
}