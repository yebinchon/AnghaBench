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
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ATA_CBL_PATA40 ; 
 int ATA_CBL_PATA40_SHORT ; 
 int ATA_CBL_PATA80 ; 
 scalar_t__ ATIIXP_IDE_UDMA_MODE ; 
 int /*<<< orphan*/  attixp_cable_override_dmi_table ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ata_port *ap)
{
	struct pci_dev *pdev = FUNC2(ap->host->dev);
	u8 udma;

	if (FUNC0(attixp_cable_override_dmi_table))
		return ATA_CBL_PATA40_SHORT;

	/* Hack from drivers/ide/pci. Really we want to know how to do the
	   raw detection not play follow the bios mode guess */
	FUNC1(pdev, ATIIXP_IDE_UDMA_MODE + ap->port_no, &udma);
	if ((udma & 0x07) >= 0x04 || (udma & 0x70) >= 0x40)
		return  ATA_CBL_PATA80;
	return ATA_CBL_PATA40;
}