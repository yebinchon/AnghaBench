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
typedef  scalar_t__ u8 ;
struct pci_dev {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_TYPE_LEVEL_LOW ; 
 int /*<<< orphan*/  PCI_INTERRUPT_LINE ; 
 int /*<<< orphan*/  PCI_INTERRUPT_PIN ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *pci_dev)
{
	int virq;

	FUNC5("PCI: Try to map irq for %s...\n", FUNC3(pci_dev));

	/* Try to get a mapping from the device-tree */
	virq = FUNC2(pci_dev, 0, 0);
	if (virq <= 0) {
		u8 line, pin;

		/* If that fails, lets fallback to what is in the config
		 * space and map that through the default controller. We
		 * also set the type to level low since that's what PCI
		 * interrupts are. If your platform does differently, then
		 * either provide a proper interrupt tree or don't use this
		 * function.
		 */
		if (FUNC4(pci_dev, PCI_INTERRUPT_PIN, &pin))
			return -1;
		if (pin == 0)
			return -1;
		if (FUNC4(pci_dev, PCI_INTERRUPT_LINE, &line) ||
		    line == 0xff || line == 0) {
			return -1;
		}
		FUNC5(" No map ! Using line %d (pin %d) from PCI config\n",
			 line, pin);

		virq = FUNC0(NULL, line);
		if (virq)
			FUNC1(virq, IRQ_TYPE_LEVEL_LOW);
	}

	if (!virq) {
		FUNC5(" Failed to map !\n");
		return -1;
	}

	FUNC5(" Mapped to linux irq %d\n", virq);

	pci_dev->irq = virq;

	return 0;
}