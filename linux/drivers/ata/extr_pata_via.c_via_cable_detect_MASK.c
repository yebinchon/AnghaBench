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
typedef  int u32 ;
struct via_isa_bridge {int flags; scalar_t__ udma_mask; } ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; struct via_isa_bridge* private_data; } ;

/* Variables and functions */
 int ATA_CBL_PATA40 ; 
 int ATA_CBL_PATA40_SHORT ; 
 int ATA_CBL_PATA80 ; 
 int ATA_CBL_PATA_UNK ; 
 int ATA_CBL_SATA ; 
 scalar_t__ ATA_UDMA4 ; 
 scalar_t__ ATA_UDMA5 ; 
 int VIA_SATA_PATA ; 
 scalar_t__ FUNC0 (struct ata_port*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct ata_port *ap) {
	const struct via_isa_bridge *config = ap->host->private_data;
	struct pci_dev *pdev = FUNC3(ap->host->dev);
	u32 ata66;

	if (FUNC4(pdev))
		return ATA_CBL_PATA40_SHORT;

	if ((config->flags & VIA_SATA_PATA) && ap->port_no == 0)
		return ATA_CBL_SATA;

	/* Early chips are 40 wire */
	if (config->udma_mask < ATA_UDMA4)
		return ATA_CBL_PATA40;
	/* UDMA 66 chips have only drive side logic */
	else if (config->udma_mask < ATA_UDMA5)
		return ATA_CBL_PATA_UNK;
	/* UDMA 100 or later */
	FUNC2(pdev, 0x50, &ata66);
	/* Check both the drive cable reporting bits, we might not have
	   two drives */
	if (ata66 & (0x10100000 >> (16 * ap->port_no)))
		return ATA_CBL_PATA80;
	/* Check with ACPI so we can spot BIOS reported SATA bridges */
	if (FUNC1(ap) &&
	    FUNC0(ap, FUNC1(ap)))
		return ATA_CBL_PATA80;
	return ATA_CBL_PATA40;
}