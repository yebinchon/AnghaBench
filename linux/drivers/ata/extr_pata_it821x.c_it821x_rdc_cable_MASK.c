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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ATA_CBL_PATA40 ; 
 int ATA_CBL_PATA80 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ata_port *ap)
{
	u16 r40;
	struct pci_dev *pdev = FUNC1(ap->host->dev);

	FUNC0(pdev, 0x40, &r40);
	if (r40 & (1 << (2 + ap->port_no)))
		return ATA_CBL_PATA40;
	return ATA_CBL_PATA80;
}