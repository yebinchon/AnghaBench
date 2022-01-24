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
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ata_port *ap)
{
	struct pci_dev *pdev = FUNC2(ap->host->dev);
	u8 tmp;

	/* Older chips keep cable detect in bits 4/5 of reg 0x48 */
	FUNC0(pdev, 0x48, &tmp);
	tmp >>= ap->port_no;
	if ((tmp & 0x10) && !FUNC1(pdev))
		return ATA_CBL_PATA40;
	return ATA_CBL_PATA80;
}