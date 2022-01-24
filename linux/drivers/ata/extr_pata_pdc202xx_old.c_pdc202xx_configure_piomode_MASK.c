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
struct ata_device {int devno; scalar_t__ class; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ATA_DEV_ATA ; 
 scalar_t__ FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ata_port *ap, struct ata_device *adev, int pio)
{
	struct pci_dev *pdev = FUNC3(ap->host->dev);
	int port = 0x60 + 8 * ap->port_no + 4 * adev->devno;
	static u16 pio_timing[5] = {
		0x0913, 0x050C , 0x0308, 0x0206, 0x0104
	};
	u8 r_ap, r_bp;

	FUNC1(pdev, port, &r_ap);
	FUNC1(pdev, port + 1, &r_bp);
	r_ap &= ~0x3F;	/* Preserve ERRDY_EN, SYNC_IN */
	r_bp &= ~0x1F;
	r_ap |= (pio_timing[pio] >> 8);
	r_bp |= (pio_timing[pio] & 0xFF);

	if (FUNC0(adev))
		r_ap |= 0x20;	/* IORDY enable */
	if (adev->class == ATA_DEV_ATA)
		r_ap |= 0x10;	/* FIFO enable */
	FUNC2(pdev, port, r_ap);
	FUNC2(pdev, port + 1, r_bp);
}