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
 int /*<<< orphan*/  PCI_ANY_ID ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_82371AB_3 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 int FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void)
{
	int result = 0;
	struct pci_dev *dev = NULL;

	/*
	 * PIIX4
	 */
	dev = FUNC2(PCI_VENDOR_ID_INTEL,
			     PCI_DEVICE_ID_INTEL_82371AB_3, PCI_ANY_ID,
			     PCI_ANY_ID, NULL);
	if (dev) {
		result = FUNC0(dev);
		FUNC1(dev);
	}

	return result;
}