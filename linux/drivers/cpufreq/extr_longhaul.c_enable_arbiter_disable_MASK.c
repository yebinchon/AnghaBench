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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int PCI_DEVICE_ID_VIA_8601_0 ; 
 int PCI_DEVICE_ID_VIA_8605_0 ; 
 int PCI_DEVICE_ID_VIA_862X_0 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_VIA ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(void)
{
	struct pci_dev *dev;
	int status = 1;
	int reg;
	u8 pci_cmd;

	/* Find PLE133 host bridge */
	reg = 0x78;
	dev = FUNC1(PCI_VENDOR_ID_VIA, PCI_DEVICE_ID_VIA_8601_0,
			     NULL);
	/* Find PM133/VT8605 host bridge */
	if (dev == NULL)
		dev = FUNC1(PCI_VENDOR_ID_VIA,
				     PCI_DEVICE_ID_VIA_8605_0, NULL);
	/* Find CLE266 host bridge */
	if (dev == NULL) {
		reg = 0x76;
		dev = FUNC1(PCI_VENDOR_ID_VIA,
				     PCI_DEVICE_ID_VIA_862X_0, NULL);
		/* Find CN400 V-Link host bridge */
		if (dev == NULL)
			dev = FUNC1(PCI_VENDOR_ID_VIA, 0x7259, NULL);
	}
	if (dev != NULL) {
		/* Enable access to port 0x22 */
		FUNC2(dev, reg, &pci_cmd);
		if (!(pci_cmd & 1<<7)) {
			pci_cmd |= 1<<7;
			FUNC3(dev, reg, pci_cmd);
			FUNC2(dev, reg, &pci_cmd);
			if (!(pci_cmd & 1<<7)) {
				FUNC4("Can't enable access to port 0x22\n");
				status = 0;
			}
		}
		FUNC0(dev);
		return status;
	}
	return 0;
}