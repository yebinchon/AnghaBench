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
struct pci_dev {int device; } ;

/* Variables and functions */
#define  PCI_DEVICE_ID_SERVERWORKS_CSB5IDE 132 
#define  PCI_DEVICE_ID_SERVERWORKS_CSB6IDE 131 
#define  PCI_DEVICE_ID_SERVERWORKS_CSB6IDE2 130 
#define  PCI_DEVICE_ID_SERVERWORKS_HT1000IDE 129 
#define  PCI_DEVICE_ID_SERVERWORKS_OSB4IDE 128 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev)
{
	int rc = 0;

	/* Force master latency timer to 64 PCI clocks */
	FUNC1(pdev, PCI_LATENCY_TIMER, 0x40);

	switch (pdev->device) {
	case PCI_DEVICE_ID_SERVERWORKS_OSB4IDE:
		rc = FUNC4(pdev);
		break;
	case PCI_DEVICE_ID_SERVERWORKS_CSB5IDE:
		FUNC0(pdev);
		/* fall through */
	case PCI_DEVICE_ID_SERVERWORKS_CSB6IDE:
	case PCI_DEVICE_ID_SERVERWORKS_CSB6IDE2:
		rc = FUNC2(pdev);
		break;
	case PCI_DEVICE_ID_SERVERWORKS_HT1000IDE:
		FUNC3(pdev);
		break;
	}

	return rc;
}