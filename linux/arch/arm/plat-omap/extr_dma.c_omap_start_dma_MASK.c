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
typedef  int /*<<< orphan*/  dma_chan_link_map ;
struct TYPE_4__ {int next_lch; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int (* dma_read ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* dma_write ) (int,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CCR ; 
 int /*<<< orphan*/  CDAC ; 
 int /*<<< orphan*/  CLNK_CTRL ; 
 int /*<<< orphan*/  CPC ; 
 int /*<<< orphan*/  DMA_ERRATA_IFRAME_BUFFERING ; 
 int /*<<< orphan*/  DMA_ERRATA_PARALLEL_CHANNELS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_LOGICAL_DMA_CH_COUNT ; 
 int /*<<< orphan*/  OMAP_DMA_ACTIVE ; 
 int OMAP_DMA_CCR_BUFFERING_DISABLE ; 
 int OMAP_DMA_CCR_EN ; 
 TYPE_2__* dma_chan ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_1__* p ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int) ; 

void FUNC12(int lch)
{
	u32 l;

	/*
	 * The CPC/CDAC register needs to be initialized to zero
	 * before starting dma transfer.
	 */
	if (FUNC1())
		p->dma_write(0, CPC, lch);
	else
		p->dma_write(0, CDAC, lch);

	if (!FUNC5() && dma_chan[lch].next_lch != -1) {
		int next_lch, cur_lch;
		char dma_chan_link_map[MAX_LOGICAL_DMA_CH_COUNT];

		/* Set the link register of the first channel */
		FUNC2(lch);

		FUNC4(dma_chan_link_map, 0, sizeof(dma_chan_link_map));
		dma_chan_link_map[lch] = 1;

		cur_lch = dma_chan[lch].next_lch;
		do {
			next_lch = dma_chan[cur_lch].next_lch;

			/* The loop case: we've been here already */
			if (dma_chan_link_map[cur_lch])
				break;
			/* Mark the current channel */
			dma_chan_link_map[cur_lch] = 1;

			FUNC2(cur_lch);
			FUNC6(cur_lch);

			cur_lch = next_lch;
		} while (next_lch != -1);
	} else if (FUNC0(DMA_ERRATA_PARALLEL_CHANNELS))
		p->dma_write(lch, CLNK_CTRL, lch);

	FUNC6(lch);

	l = p->dma_read(CCR, lch);

	if (FUNC0(DMA_ERRATA_IFRAME_BUFFERING))
			l |= OMAP_DMA_CCR_BUFFERING_DISABLE;
	l |= OMAP_DMA_CCR_EN;

	/*
	 * As dma_write() uses IO accessors which are weakly ordered, there
	 * is no guarantee that data in coherent DMA memory will be visible
	 * to the DMA device.  Add a memory barrier here to ensure that any
	 * such data is visible prior to enabling DMA.
	 */
	FUNC3();
	p->dma_write(l, CCR, lch);

	dma_chan[lch].flags |= OMAP_DMA_ACTIVE;
}