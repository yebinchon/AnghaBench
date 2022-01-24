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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int (* dma_read ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* dma_write ) (int,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CLNK_CTRL ; 
 int /*<<< orphan*/  OMAP_DMA_ACTIVE ; 
 TYPE_2__* dma_chan ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* p ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC5(int lch)
{
	u32 l;

	l = p->dma_read(CLNK_CTRL, lch);

	/* Disable interrupts */
	FUNC2(lch);

	if (FUNC0()) {
		/* Set the STOP_LNK bit */
		l |= 1 << 14;
	}

	if (FUNC1()) {
		/* Clear the ENABLE_LNK bit */
		l &= ~(1 << 15);
	}

	p->dma_write(l, CLNK_CTRL, lch);
	dma_chan[lch].flags &= ~OMAP_DMA_ACTIVE;
}