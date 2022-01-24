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
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {scalar_t__ dma_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t XFER_MW_DMA_0 ; 
 scalar_t__ XFER_UDMA_0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ata_port *ap, struct ata_device *adev)
{
	struct pci_dev *pdev = FUNC2(ap->host->dev);
	u32 conf;
	FUNC0(pdev, 0x5C, &conf);
	conf &= 0x78FFE088;	/* Keep the other bits */
	if (adev->dma_mode >= XFER_UDMA_0) {
		int udma = adev->dma_mode - XFER_UDMA_0;
		conf |= 0x80000000;
		conf |= (udma + 2) << 28;
		conf |= (2 - udma) * 0x111;	/* spread into three nibbles */
	} else {
		static const u32 mwdma[4] = {
			0x0655, 0x0200, 0x0200, 0x0100
		};
		conf |= mwdma[adev->dma_mode - XFER_MW_DMA_0];
	}
	FUNC1(pdev, 0x5C, conf);
}