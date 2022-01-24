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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; scalar_t__ dma_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t XFER_MW_DMA_0 ; 
 scalar_t__ XFER_UDMA_0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,unsigned long,int) ; 
 unsigned long FUNC4 (struct ata_port*,struct ata_device*,int) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ata_port *ap, struct ata_device *adev)
{
	static const u8 ultra_table[2][7] = {
		{ 0x0C, 0x07, 0x05, 0x04, 0x02, 0x01, 0xFF },	/* 100MHz */
		{ 0x0F, 0x0B, 0x07, 0x05, 0x03, 0x02, 0x01 },	/* 133Mhz */
	};
	static const u16 dma_table[3] = { 0x2208, 0x10C2, 0x10C1 };

	struct pci_dev *pdev = FUNC5(ap->host->dev);
	unsigned long ma = FUNC4(ap, adev, 0x08);
	unsigned long ua = FUNC4(ap, adev, 0x0C);
	unsigned long addr_mask = 0x80 + 4 * ap->port_no;
	int port_shift = adev->devno * 4;
	u8 scsc, mode;
	u16 multi, ultra;

	FUNC0(pdev, 0x8A, &scsc);
	FUNC0(pdev, addr_mask, &mode);
	FUNC1(pdev, ma, &multi);
	FUNC1(pdev, ua, &ultra);

	/* Mask timing bits */
	ultra &= ~0x3F;
	mode &= ~(0x03 << port_shift);

	/* Extract scsc */
	scsc = (scsc & 0x30) ? 1 : 0;

	if (adev->dma_mode >= XFER_UDMA_0) {
		multi = 0x10C1;
		ultra |= ultra_table[scsc][adev->dma_mode - XFER_UDMA_0];
		mode |= (0x03 << port_shift);
	} else {
		multi = dma_table[adev->dma_mode - XFER_MW_DMA_0];
		mode |= (0x02 << port_shift);
	}
	FUNC2(pdev, addr_mask, mode);
	FUNC3(pdev, ma, multi);
	FUNC3(pdev, ua, ultra);
}