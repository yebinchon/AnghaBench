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
struct ata_device {int devno; int /*<<< orphan*/  pio_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFER_PIO_0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ata_port *ap, struct ata_device *adev)
{
	static const u8 pio_mode[] = { 0x5d, 0x47, 0x34, 0x22, 0x20 };
	int offset = 1 + 2 * ap->port_no - adev->devno;
	int devbits = (2 * ap->port_no + adev->devno) * 4;
	u16 csb5_pio;
	struct pci_dev *pdev = FUNC4(ap->host->dev);
	int pio = adev->pio_mode - XFER_PIO_0;

	FUNC1(pdev, 0x40 + offset, pio_mode[pio]);

	/* The OSB4 just requires the timing but the CSB series want the
	   mode number as well */
	if (FUNC3(pdev)) {
		FUNC0(pdev, 0x4A, &csb5_pio);
		csb5_pio &= ~(0x0F << devbits);
		FUNC2(pdev, 0x4A, csb5_pio | (pio << devbits));
	}
}