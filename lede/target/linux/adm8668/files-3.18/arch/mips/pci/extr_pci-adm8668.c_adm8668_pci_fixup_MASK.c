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
struct pci_dev {scalar_t__ devfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_BASE_ADDRESS_0 ; 
 int /*<<< orphan*/  PCI_BASE_ADDRESS_1 ; 
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MASTER ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	if (dev->devfn != 0)
		return;

	FUNC3("PCI: fixing up ADM8668 controller\n");

	/* setup COMMAND register */
	FUNC2(dev, PCI_COMMAND,
		(PCI_COMMAND_IO | PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER));

	/* setup CACHE_LINE_SIZE register */
	FUNC0(dev, PCI_CACHE_LINE_SIZE, 4);

	/* setup BARS */
	FUNC1(dev, PCI_BASE_ADDRESS_0, 0);
	FUNC1(dev, PCI_BASE_ADDRESS_1, 0);
}