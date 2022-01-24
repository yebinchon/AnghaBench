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
struct pci_dev {int revision; scalar_t__ vendor; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PCI_VENDOR_ID_AL ; 
 struct pci_dev* ali_isa_bridge ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	u8 tmp;
	struct pci_dev *north;

	/*
	 * The chipset revision selects the driver operations and
	 * mode data.
	 */

	if (pdev->revision <= 0x20) {
		FUNC5(pdev, 0x53, &tmp);
		tmp |= 0x03;
		FUNC6(pdev, 0x53, tmp);
	} else {
		FUNC5(pdev, 0x4a, &tmp);
		FUNC6(pdev, 0x4a, tmp | 0x20);
		FUNC5(pdev, 0x4B, &tmp);
		if (pdev->revision < 0xC2)
			/* 1543-E/F, 1543C-C, 1543C-D, 1543C-E */
			/* Clear CD-ROM DMA write bit */
			tmp &= 0x7F;
		/* Cable and UDMA */
		if (pdev->revision >= 0xc2)
			tmp |= 0x01;
		FUNC6(pdev, 0x4B, tmp | 0x08);
		/*
		 * CD_ROM DMA on (0x53 bit 0). Enable this even if we want
		 * to use PIO. 0x53 bit 1 (rev 20 only) - enable FIFO control
		 * via 0x54/55.
		 */
		FUNC5(pdev, 0x53, &tmp);
		if (pdev->revision >= 0xc7)
			tmp |= 0x03;
		else
			tmp |= 0x01;	/* CD_ROM enable for DMA */
		FUNC6(pdev, 0x53, tmp);
	}
	north = FUNC4(FUNC3(pdev->bus), 0,
					    FUNC0(0, 0));
	if (north && north->vendor == PCI_VENDOR_ID_AL && ali_isa_bridge) {
		/* Configure the ALi bridge logic. For non ALi rely on BIOS.
		   Set the south bridge enable bit */
		FUNC5(ali_isa_bridge, 0x79, &tmp);
		if (pdev->revision == 0xC2)
			FUNC6(ali_isa_bridge, 0x79, tmp | 0x04);
		else if (pdev->revision > 0xC2 && pdev->revision < 0xC5)
			FUNC6(ali_isa_bridge, 0x79, tmp | 0x02);
	}
	FUNC2(north);
	FUNC1(pdev);
}