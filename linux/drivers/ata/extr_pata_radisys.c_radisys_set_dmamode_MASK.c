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
struct ata_port {struct ata_device* private_data; TYPE_1__* host; } ;
struct ata_device {scalar_t__ dma_mode; unsigned int const pio_mode; int devno; scalar_t__ xfer_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int XFER_MW_DMA_0 ; 
 unsigned int const XFER_PIO_0 ; 
 unsigned int const XFER_PIO_3 ; 
 unsigned int const XFER_PIO_4 ; 
 scalar_t__ XFER_UDMA_0 ; 
 scalar_t__ XFER_UDMA_2 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (struct ata_port *ap, struct ata_device *adev)
{
	struct pci_dev *dev	= FUNC4(ap->host->dev);
	u16 idetm_data;
	u8 udma_enable;

	static const	 /* ISP  RTC */
	u8 timings[][2]	= { { 0, 0 },
			    { 0, 0 },
			    { 1, 1 },
			    { 2, 2 },
			    { 3, 3 }, };

	/*
	 * MWDMA is driven by the PIO timings. We must also enable
	 * IORDY unconditionally.
	 */

	FUNC1(dev, 0x40, &idetm_data);
	FUNC0(dev, 0x48, &udma_enable);

	if (adev->dma_mode < XFER_UDMA_0) {
		unsigned int mwdma	= adev->dma_mode - XFER_MW_DMA_0;
		const unsigned int needed_pio[3] = {
			XFER_PIO_0, XFER_PIO_3, XFER_PIO_4
		};
		int pio = needed_pio[mwdma] - XFER_PIO_0;
		int control = 3;	/* IORDY|TIME0 */

		/* If the drive MWDMA is faster than it can do PIO then
		   we must force PIO0 for PIO cycles. */

		if (adev->pio_mode < needed_pio[mwdma])
			control = 1;

		/* Mask out the relevant control and timing bits we will load. Also
		   clear the other drive TIME register as a precaution */

		idetm_data &= 0xCCCC;
		idetm_data |= control << (4 * adev->devno);
		idetm_data |= (timings[pio][0] << 12) | (timings[pio][1] << 8);

		udma_enable &= ~(1 << adev->devno);
	} else {
		u8 udma_mode;

		/* UDMA66 on: UDMA 33 and 66 are switchable via register 0x4A */

		FUNC0(dev, 0x4A, &udma_mode);

		if (adev->xfer_mode == XFER_UDMA_2)
			udma_mode &= ~(2 << (adev->devno * 4));
		else /* UDMA 4 */
			udma_mode |= (2 << (adev->devno * 4));

		FUNC2(dev, 0x4A, udma_mode);

		udma_enable |= (1 << adev->devno);
	}
	FUNC3(dev, 0x40, idetm_data);
	FUNC2(dev, 0x48, udma_enable);

	/* Track which port is configured */
	ap->private_data = adev;
}