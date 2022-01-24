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
typedef  scalar_t__ u32 ;
struct ata_port {int /*<<< orphan*/  dev; TYPE_1__* host; } ;
struct ata_device {scalar_t__ dma_mode; } ;
struct arasan_cf_dev {TYPE_2__* host; scalar_t__ vbase; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {struct arasan_cf_dev* private_data; } ;

/* Variables and functions */
 int BUF_AVAIL_IRQ ; 
 scalar_t__ DMA_XFER_MODE ; 
 scalar_t__ MULTI_WORD_DMA_ENB ; 
 scalar_t__ OP_MODE ; 
 int PIO_XFER_ERR_IRQ ; 
 scalar_t__ TM_CFG ; 
 scalar_t__ TRUEIDE_MWORD_DMA_TIMING_MASK ; 
 scalar_t__ TRUEIDE_MWORD_DMA_TIMING_SHIFT ; 
 scalar_t__ ULTRA_DMA_ENB ; 
 scalar_t__ ULTRA_DMA_TIMING_MASK ; 
 scalar_t__ ULTRA_DMA_TIMING_SHIFT ; 
 scalar_t__ XFER_CTR ; 
 int XFER_DONE_IRQ ; 
 scalar_t__ XFER_MW_DMA_0 ; 
 scalar_t__ XFER_MW_DMA_4 ; 
 scalar_t__ XFER_UDMA_0 ; 
 scalar_t__ XFER_UDMA_6 ; 
 int /*<<< orphan*/  FUNC0 (struct arasan_cf_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct ata_port *ap, struct ata_device *adev)
{
	struct arasan_cf_dev *acdev = ap->host->private_data;
	u32 opmode, tmcfg, dma_mode = adev->dma_mode;
	unsigned long flags;

	FUNC3(&acdev->host->lock, flags);
	opmode = FUNC2(acdev->vbase + OP_MODE) &
		~(MULTI_WORD_DMA_ENB | ULTRA_DMA_ENB);
	tmcfg = FUNC2(acdev->vbase + TM_CFG);

	if ((dma_mode >= XFER_UDMA_0) && (dma_mode <= XFER_UDMA_6)) {
		opmode |= ULTRA_DMA_ENB;
		tmcfg &= ~ULTRA_DMA_TIMING_MASK;
		tmcfg |= (dma_mode - XFER_UDMA_0) << ULTRA_DMA_TIMING_SHIFT;
	} else if ((dma_mode >= XFER_MW_DMA_0) && (dma_mode <= XFER_MW_DMA_4)) {
		opmode |= MULTI_WORD_DMA_ENB;
		tmcfg &= ~TRUEIDE_MWORD_DMA_TIMING_MASK;
		tmcfg |= (dma_mode - XFER_MW_DMA_0) <<
			TRUEIDE_MWORD_DMA_TIMING_SHIFT;
	} else {
		FUNC1(ap->dev, "Unknown DMA mode\n");
		FUNC4(&acdev->host->lock, flags);
		return;
	}

	FUNC5(opmode, acdev->vbase + OP_MODE);
	FUNC5(tmcfg, acdev->vbase + TM_CFG);
	FUNC5(DMA_XFER_MODE, acdev->vbase + XFER_CTR);

	FUNC0(acdev, PIO_XFER_ERR_IRQ, 0);
	FUNC0(acdev, BUF_AVAIL_IRQ | XFER_DONE_IRQ, 1);
	FUNC4(&acdev->host->lock, flags);
}