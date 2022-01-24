#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct ata_port {int /*<<< orphan*/  dev; TYPE_1__* host; } ;
struct ata_device {int pio_mode; } ;
struct arasan_cf_dev {TYPE_2__* host; scalar_t__ vbase; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {struct arasan_cf_dev* private_data; } ;

/* Variables and functions */
 int BUF_AVAIL_IRQ ; 
 int DRQ_BLOCK_SIZE_MASK ; 
 int MULTI_WORD_DMA_ENB ; 
 scalar_t__ OP_MODE ; 
 int PIO_XFER_ERR_IRQ ; 
 scalar_t__ TM_CFG ; 
 int TRUEIDE_PIO_TIMING_MASK ; 
 int TRUEIDE_PIO_TIMING_SHIFT ; 
 int ULTRA_DMA_ENB ; 
 int XFER_DONE_IRQ ; 
 int XFER_PIO_0 ; 
 int /*<<< orphan*/  FUNC0 (struct arasan_cf_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct ata_port *ap, struct ata_device *adev)
{
	struct arasan_cf_dev *acdev = ap->host->private_data;
	u8 pio = adev->pio_mode - XFER_PIO_0;
	unsigned long flags;
	u32 val;

	/* Arasan ctrl supports Mode0 -> Mode6 */
	if (pio > 6) {
		FUNC1(ap->dev, "Unknown PIO mode\n");
		return;
	}

	FUNC3(&acdev->host->lock, flags);
	val = FUNC2(acdev->vbase + OP_MODE) &
		~(ULTRA_DMA_ENB | MULTI_WORD_DMA_ENB | DRQ_BLOCK_SIZE_MASK);
	FUNC5(val, acdev->vbase + OP_MODE);
	val = FUNC2(acdev->vbase + TM_CFG) & ~TRUEIDE_PIO_TIMING_MASK;
	val |= pio << TRUEIDE_PIO_TIMING_SHIFT;
	FUNC5(val, acdev->vbase + TM_CFG);

	FUNC0(acdev, BUF_AVAIL_IRQ | XFER_DONE_IRQ, 0);
	FUNC0(acdev, PIO_XFER_ERR_IRQ, 1);
	FUNC4(&acdev->host->lock, flags);
}