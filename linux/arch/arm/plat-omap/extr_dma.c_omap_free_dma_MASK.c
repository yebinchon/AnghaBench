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
struct TYPE_4__ {int dev_id; int next_lch; int /*<<< orphan*/ * callback; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* dma_write ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CCR ; 
 TYPE_2__* dma_chan ; 
 int /*<<< orphan*/  dma_chan_lock ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* p ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC8(int lch)
{
	unsigned long flags;

	if (dma_chan[lch].dev_id == -1) {
		FUNC4("omap_dma: trying to free unallocated DMA channel %d\n",
		       lch);
		return;
	}

	/* Disable interrupt for logical channel */
	if (FUNC0())
		FUNC1(lch);

	/* Disable all DMA interrupts for the channel. */
	FUNC3(lch);

	/* Make sure the DMA transfer is stopped. */
	p->dma_write(0, CCR, lch);

	/* Clear registers */
	if (FUNC0())
		FUNC2(lch);

	FUNC5(&dma_chan_lock, flags);
	dma_chan[lch].dev_id = -1;
	dma_chan[lch].next_lch = -1;
	dma_chan[lch].callback = NULL;
	FUNC6(&dma_chan_lock, flags);
}