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
struct pci_dn {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus; } ;
struct eeh_dev {int /*<<< orphan*/  pe; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 unsigned long IORESOURCE_IO ; 
 unsigned long IORESOURCE_MEM ; 
 int PCI_ROM_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 struct pci_dn* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 unsigned long FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int) ; 
 struct eeh_dev* FUNC7 (struct pci_dn*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *dev)
{
	struct pci_dn *pdn;
	struct eeh_dev *edev;
	int i;

	pdn = FUNC2(dev->bus, dev->devfn);
	if (!pdn) {
		FUNC8("PCI: no pci dn found for dev=%s\n",
			FUNC3(dev));
		return;
	}

	edev = FUNC7(pdn);
	if (!edev) {
		FUNC8("PCI: no EEH dev found for %s\n",
			FUNC3(dev));
		return;
	}

	/* Skip any devices for which EEH is not enabled. */
	if (!edev->pe) {
		FUNC0(&dev->dev, "EEH: Skip building address cache\n");
		return;
	}

	/*
	 * Walk resources on this device, poke the first 7 (6 normal BAR and 1
	 * ROM BAR) into the tree.
	 */
	for (i = 0; i <= PCI_ROM_RESOURCE; i++) {
		resource_size_t start = FUNC6(dev,i);
		resource_size_t end = FUNC4(dev,i);
		unsigned long flags = FUNC5(dev,i);

		/* We are interested only bus addresses, not dma or other stuff */
		if (0 == (flags & (IORESOURCE_IO | IORESOURCE_MEM)))
			continue;
		if (start == 0 || ~start == 0 || end == 0 || ~end == 0)
			 continue;
		FUNC1(dev, start, end, flags);
	}
}