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
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int dma_mode; int devno; int pio_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATIIXP_IDE_MWDMA_TIMING ; 
 int /*<<< orphan*/  ATIIXP_IDE_UDMA_MODE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int XFER_MW_DMA_0 ; 
 int XFER_MW_DMA_1 ; 
 int XFER_MW_DMA_2 ; 
 int XFER_UDMA_0 ; 
 int /*<<< orphan*/  atiixp_lock ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,struct ata_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pci_dev* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct ata_port *ap, struct ata_device *adev)
{
	static u8 mwdma_timings[5] = { 0x77, 0x21, 0x20 };

	struct pci_dev *pdev = FUNC8(ap->host->dev);
	int dma = adev->dma_mode;
	int dn = 2 * ap->port_no + adev->devno;
	int wanted_pio;
	unsigned long flags;

	FUNC6(&atiixp_lock, flags);

	if (adev->dma_mode >= XFER_UDMA_0) {
		u16 udma_mode_data;

		dma -= XFER_UDMA_0;

		FUNC3(pdev, ATIIXP_IDE_UDMA_MODE, &udma_mode_data);
		udma_mode_data &= ~(0x7 << (4 * dn));
		udma_mode_data |= dma << (4 * dn);
		FUNC5(pdev, ATIIXP_IDE_UDMA_MODE, udma_mode_data);
	} else {
		int timing_shift = (16 * ap->port_no) + 8 * (adev->devno ^ 1);
		u32 mwdma_timing_data;

		dma -= XFER_MW_DMA_0;

		FUNC2(pdev, ATIIXP_IDE_MWDMA_TIMING,
				      &mwdma_timing_data);
		mwdma_timing_data &= ~(0xFF << timing_shift);
		mwdma_timing_data |= (mwdma_timings[dma] << timing_shift);
		FUNC4(pdev, ATIIXP_IDE_MWDMA_TIMING,
				       mwdma_timing_data);
	}
	/*
	 *	We must now look at the PIO mode situation. We may need to
	 *	adjust the PIO mode to keep the timings acceptable
	 */
	if (adev->dma_mode >= XFER_MW_DMA_2)
		wanted_pio = 4;
	else if (adev->dma_mode == XFER_MW_DMA_1)
		wanted_pio = 3;
	else if (adev->dma_mode == XFER_MW_DMA_0)
		wanted_pio = 0;
	else FUNC0();

	if (adev->pio_mode != wanted_pio)
		FUNC1(ap, adev, wanted_pio);
	FUNC7(&atiixp_lock, flags);
}