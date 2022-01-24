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
struct ata_port {int port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ATA_CBL_PATA40 ; 
 int ATA_CBL_PATA80 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ata_port *ap)
{
	struct pci_dev *pdev = FUNC2(ap->host->dev);
	u8 scr2, ata66;

	FUNC0(pdev, 0x5B, &scr2);
	FUNC1(pdev, 0x5B, scr2 & ~0x01);

	FUNC3(10); /* debounce */

	/* Cable register now active */
	FUNC0(pdev, 0x5A, &ata66);
	/* Restore state */
	FUNC1(pdev, 0x5B, scr2);

	if (ata66 & (2 >> ap->port_no))
		return ATA_CBL_PATA40;
	else
		return ATA_CBL_PATA80;
}