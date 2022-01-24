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
struct ata_device {int devno; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ata_port *ap, struct ata_device *adev, int pio)
{
	struct pci_dev *pdev = FUNC2(ap->host->dev);
	static u16 pio_timing[5] = {
		0x50D, 0x407, 0x304, 0x242, 0x240
	};
	u16 dummy;
	int timing = 0x44 + (8 * ap->port_no) + (4 * adev->devno);

	FUNC1(pdev, timing, pio_timing[pio]);
	/* Can we lose this oddity of the old driver */
	FUNC0(pdev, timing, &dummy);
}