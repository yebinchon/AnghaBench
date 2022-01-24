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
 int /*<<< orphan*/  PCI_DEVICE_ID_VIA_8235 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_VIA_8237 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_VIA ; 
 int acpi_regs_addr ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct pci_dev *dev;
	u8 pci_cmd;

	/* Find VT8235 southbridge */
	dev = FUNC1(PCI_VENDOR_ID_VIA, PCI_DEVICE_ID_VIA_8235, NULL);
	if (dev == NULL)
		/* Find VT8237 southbridge */
		dev = FUNC1(PCI_VENDOR_ID_VIA,
				     PCI_DEVICE_ID_VIA_8237, NULL);
	if (dev != NULL) {
		/* Set transition time to max */
		FUNC2(dev, 0xec, &pci_cmd);
		pci_cmd &= ~(1 << 2);
		FUNC4(dev, 0xec, pci_cmd);
		FUNC2(dev, 0xe4, &pci_cmd);
		pci_cmd &= ~(1 << 7);
		FUNC4(dev, 0xe4, pci_cmd);
		FUNC2(dev, 0xe5, &pci_cmd);
		pci_cmd |= 1 << 7;
		FUNC4(dev, 0xe5, pci_cmd);
		/* Get address of ACPI registers block*/
		FUNC2(dev, 0x81, &pci_cmd);
		if (pci_cmd & 1 << 7) {
			FUNC3(dev, 0x88, &acpi_regs_addr);
			acpi_regs_addr &= 0xff00;
			FUNC5("ACPI I/O at 0x%x\n", acpi_regs_addr);
		}

		FUNC0(dev);
		return 1;
	}
	return 0;
}