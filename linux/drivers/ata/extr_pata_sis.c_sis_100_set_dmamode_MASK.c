#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {int dma_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int XFER_MW_DMA_0 ; 
 scalar_t__ XFER_UDMA_0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 int FUNC2 (struct ata_device*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (struct ata_port *ap, struct ata_device *adev)
{
	struct pci_dev *pdev = FUNC3(ap->host->dev);
	int speed = adev->dma_mode - XFER_MW_DMA_0;
	int drive_pci = FUNC2(adev);
	u8 timing;

	static const u8 udma_bits[]  = { 0x8B, 0x87, 0x85, 0x83, 0x82, 0x81};

	FUNC0(pdev, drive_pci + 1, &timing);

	if (adev->dma_mode < XFER_UDMA_0) {
		/* NOT SUPPORTED YET: NEED DATA SHEET. DITTO IN OLD DRIVER */
	} else {
		/* Bit 7 is UDMA on/off, bit 0-3 are cycle time */
		speed = adev->dma_mode - XFER_UDMA_0;
		timing &= ~0x8F;
		timing |= udma_bits[speed];
	}
	FUNC1(pdev, drive_pci + 1, timing);
}