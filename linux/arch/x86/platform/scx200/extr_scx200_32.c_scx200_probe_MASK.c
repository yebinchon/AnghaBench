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
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ device; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 scalar_t__ PCI_DEVICE_ID_NS_SC1100_BRIDGE ; 
 scalar_t__ PCI_DEVICE_ID_NS_SCx200_BRIDGE ; 
 int /*<<< orphan*/  SCx200_CBA_SCRATCH ; 
 unsigned int SCx200_CB_BASE_FIXED ; 
 int /*<<< orphan*/  SCx200_GPIO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,unsigned int*) ; 
 unsigned int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ,char*) ; 
 unsigned int scx200_cb_base ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 unsigned int scx200_gpio_base ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	unsigned base;

	if (pdev->device == PCI_DEVICE_ID_NS_SCx200_BRIDGE ||
	    pdev->device == PCI_DEVICE_ID_NS_SC1100_BRIDGE) {
		base = FUNC1(pdev, 0);
		FUNC3("GPIO base 0x%x\n", base);

		if (!FUNC5(base, SCx200_GPIO_SIZE,
				    "NatSemi SCx200 GPIO")) {
			FUNC2("can't allocate I/O for GPIOs\n");
			return -EBUSY;
		}

		scx200_gpio_base = base;
		FUNC7();

	} else {
		/* find the base of the Configuration Block */
		if (FUNC6(SCx200_CB_BASE_FIXED)) {
			scx200_cb_base = SCx200_CB_BASE_FIXED;
		} else {
			FUNC0(pdev, SCx200_CBA_SCRATCH, &base);
			if (FUNC6(base)) {
				scx200_cb_base = base;
			} else {
				FUNC4("Configuration Block not found\n");
				return -ENODEV;
			}
		}
		FUNC3("Configuration Block base 0x%x\n", scx200_cb_base);
	}

	return 0;
}