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
struct it821x_dev {scalar_t__ clock_mode; } ;
struct ata_port {int port_no; struct it821x_dev* private_data; TYPE_1__* host; } ;
struct ata_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ATA_66 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ata_port *ap, struct ata_device *adev, u16 timing)
{
	struct pci_dev *pdev = FUNC1(ap->host->dev);
	struct it821x_dev *itdev = ap->private_data;
	int channel = ap->port_no;
	u8 conf;

	/* Program PIO/MWDMA timing bits */
	if (itdev->clock_mode == ATA_66)
		conf = timing >> 8;
	else
		conf = timing & 0xFF;
	FUNC0(pdev, 0x54 + 4 * channel, conf);
}