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
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct ata_device {scalar_t__ devno; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  XFER_MW_DMA_0 138 
#define  XFER_MW_DMA_1 137 
#define  XFER_MW_DMA_2 136 
#define  XFER_PIO_0 135 
#define  XFER_PIO_1 134 
#define  XFER_PIO_2 133 
#define  XFER_PIO_3 132 
#define  XFER_PIO_4 131 
#define  XFER_SW_DMA_0 130 
#define  XFER_SW_DMA_1 129 
#define  XFER_SW_DMA_2 128 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ata_port *ap, struct ata_device *adev, int speed)
{
	struct pci_dev *pdev = FUNC3(ap->host->dev);
	u32 timing = 0;
	u32 triflex_timing, old_triflex_timing;
	int channel_offset = ap->port_no ? 0x74: 0x70;
	unsigned int is_slave	= (adev->devno != 0);


	FUNC1(pdev, channel_offset, &old_triflex_timing);
	triflex_timing = old_triflex_timing;

	switch(speed)
	{
		case XFER_MW_DMA_2:
			timing = 0x0103;break;
		case XFER_MW_DMA_1:
			timing = 0x0203;break;
		case XFER_MW_DMA_0:
			timing = 0x0808;break;
		case XFER_SW_DMA_2:
		case XFER_SW_DMA_1:
		case XFER_SW_DMA_0:
			timing = 0x0F0F;break;
		case XFER_PIO_4:
			timing = 0x0202;break;
		case XFER_PIO_3:
			timing = 0x0204;break;
		case XFER_PIO_2:
			timing = 0x0404;break;
		case XFER_PIO_1:
			timing = 0x0508;break;
		case XFER_PIO_0:
			timing = 0x0808;break;
		default:
			FUNC0();
	}
	triflex_timing &= ~ (0xFFFF << (16 * is_slave));
	triflex_timing |= (timing << (16 * is_slave));

	if (triflex_timing != old_triflex_timing)
		FUNC2(pdev, channel_offset, triflex_timing);
}