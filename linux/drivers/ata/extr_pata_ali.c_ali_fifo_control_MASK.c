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
struct ata_device {int devno; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ata_port *ap, struct ata_device *adev, int on)
{
	struct pci_dev *pdev = FUNC2(ap->host->dev);
	int pio_fifo = 0x54 + ap->port_no;
	u8 fifo;
	int shift = 4 * adev->devno;

	/* ATA - FIFO on set nibble to 0x05, ATAPI - FIFO off, set nibble to
	   0x00. Not all the docs agree but the behaviour we now use is the
	   one stated in the BIOS Programming Guide */

	FUNC0(pdev, pio_fifo, &fifo);
	fifo &= ~(0x0F << shift);
	fifo |= (on << shift);
	FUNC1(pdev, pio_fifo, fifo);
}