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
typedef  int u32 ;
struct pci_dev {scalar_t__ revision; int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DEVICE_ID_SERVERWORKS_CSB5 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_SERVERWORKS_CSB6 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_SERVERWORKS ; 
 scalar_t__ SVWKS_CSB5_REVISION_NEW ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,int) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *pdev)
{
	u8 btr;

	/* Third Channel Test */
	if (!(FUNC0(pdev->devfn) & 1)) {
		struct pci_dev * findev = NULL;
		u32 reg4c = 0;
		findev = FUNC2(PCI_VENDOR_ID_SERVERWORKS,
			PCI_DEVICE_ID_SERVERWORKS_CSB5, NULL);
		if (findev) {
			FUNC4(findev, 0x4C, &reg4c);
			reg4c &= ~0x000007FF;
			reg4c |=  0x00000040;
			reg4c |=  0x00000020;
			FUNC6(findev, 0x4C, reg4c);
			FUNC1(findev);
		}
	} else {
		struct pci_dev * findev = NULL;
		u8 reg41 = 0;

		findev = FUNC2(PCI_VENDOR_ID_SERVERWORKS,
				PCI_DEVICE_ID_SERVERWORKS_CSB6, NULL);
		if (findev) {
			FUNC3(findev, 0x41, &reg41);
			reg41 &= ~0x40;
			FUNC5(findev, 0x41, reg41);
			FUNC1(findev);
		}
	}
	/* setup the UDMA Control register
	 *
	 * 1. clear bit 6 to enable DMA
	 * 2. enable DMA modes with bits 0-1
	 * 	00 : legacy
	 * 	01 : udma2
	 * 	10 : udma2/udma4
	 * 	11 : udma2/udma4/udma5
	 */
	FUNC3(pdev, 0x5A, &btr);
	btr &= ~0x40;
	if (!(FUNC0(pdev->devfn) & 1))
		btr |= 0x2;
	else
		btr |= (pdev->revision >= SVWKS_CSB5_REVISION_NEW) ? 0x3 : 0x2;
	FUNC5(pdev, 0x5A, btr);

	return btr;
}