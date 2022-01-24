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
struct ata_device {unsigned int pio_mode; scalar_t__ class; int devno; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ATA_DEV_ATA ; 
 unsigned int XFER_PIO_0 ; 
 scalar_t__ FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  efar_lock ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8 (struct ata_port *ap, struct ata_device *adev)
{
	unsigned int pio	= adev->pio_mode - XFER_PIO_0;
	struct pci_dev *dev	= FUNC7(ap->host->dev);
	unsigned int master_port = ap->port_no ? 0x42 : 0x40;
	unsigned long flags;
	u16 master_data;
	u8 udma_enable;
	int control = 0;

	/*
	 *	See Intel Document 298600-004 for the timing programing rules
	 *	for PIIX/ICH. The EFAR is a clone so very similar
	 */

	static const	 /* ISP  RTC */
	u8 timings[][2]	= { { 0, 0 },
			    { 0, 0 },
			    { 1, 0 },
			    { 2, 1 },
			    { 2, 3 }, };

	if (pio > 1)
		control |= 1;	/* TIME */
	if (FUNC0(adev))	/* PIO 3/4 require IORDY */
		control |= 2;	/* IE */
	/* Intel specifies that the prefetch/posting is for disk only */
	if (adev->class == ATA_DEV_ATA)
		control |= 4;	/* PPE */

	FUNC5(&efar_lock, flags);

	FUNC2(dev, master_port, &master_data);

	/* Set PPE, IE, and TIME as appropriate */
	if (adev->devno == 0) {
		master_data &= 0xCCF0;
		master_data |= control;
		master_data |= (timings[pio][0] << 12) |
			(timings[pio][1] << 8);
	} else {
		int shift = 4 * ap->port_no;
		u8 slave_data;

		master_data &= 0xFF0F;
		master_data |= (control << 4);

		/* Slave timing in separate register */
		FUNC1(dev, 0x44, &slave_data);
		slave_data &= ap->port_no ? 0x0F : 0xF0;
		slave_data |= ((timings[pio][0] << 2) | timings[pio][1]) << shift;
		FUNC3(dev, 0x44, slave_data);
	}

	master_data |= 0x4000;	/* Ensure SITRE is set */
	FUNC4(dev, master_port, master_data);

	FUNC1(dev, 0x48, &udma_enable);
	udma_enable &= ~(1 << (2 * ap->port_no + adev->devno));
	FUNC3(dev, 0x48, udma_enable);
	FUNC6(&efar_lock, flags);
}