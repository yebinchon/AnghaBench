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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int XFER_MW_DMA_0 ; 
 int XFER_UDMA_0 ; 
 int FUNC0 (struct ata_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ata_port *ap, struct ata_device *adev,
			    u8 mode)
{
	struct pci_dev *pdev = FUNC5(ap->host->dev);
	u32 addr1, addr2;
	u32 reg, timing, mask;
	u8 fast;

	addr1 = 0x40 + 4 * (adev->devno + 2 * ap->port_no);
	addr2 = 0x51 + 4 * ap->port_no;

	/* Fast interrupt prediction disable, hold off interrupt disable */
	FUNC1(pdev, addr2, &fast);
	fast &= ~0x07;
	FUNC3(pdev, addr2, fast);

	/* Determine timing mask and find matching mode entry */
	if (mode < XFER_MW_DMA_0)
		mask = 0xcfc3ffff;
	else if (mode < XFER_UDMA_0)
		mask = 0x31c001ff;
	else
		mask = 0x303c0000;

	timing = FUNC0(ap, mode);

	FUNC2(pdev, addr1, &reg);
	reg = (reg & ~mask) | (timing & mask);
	FUNC4(pdev, addr1, reg);
}