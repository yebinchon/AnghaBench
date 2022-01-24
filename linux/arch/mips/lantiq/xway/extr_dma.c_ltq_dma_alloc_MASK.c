#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ltq_dma_channel {int phys; int nr; int /*<<< orphan*/  dev; int /*<<< orphan*/  desc_base; scalar_t__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CHAN_ON ; 
 int DMA_CHAN_RST ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int LTQ_DESC_NUM ; 
 int LTQ_DESC_SIZE ; 
 int /*<<< orphan*/  LTQ_DMA_CCTRL ; 
 int /*<<< orphan*/  LTQ_DMA_CDBA ; 
 int /*<<< orphan*/  LTQ_DMA_CDLEN ; 
 int /*<<< orphan*/  LTQ_DMA_CS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ltq_dma_lock ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(struct ltq_dma_channel *ch)
{
	unsigned long flags;

	ch->desc = 0;
	ch->desc_base = FUNC0(ch->dev,
					   LTQ_DESC_NUM * LTQ_DESC_SIZE,
					   &ch->phys, GFP_ATOMIC);

	FUNC4(&ltq_dma_lock, flags);
	FUNC2(ch->nr, LTQ_DMA_CS);
	FUNC2(ch->phys, LTQ_DMA_CDBA);
	FUNC2(LTQ_DESC_NUM, LTQ_DMA_CDLEN);
	FUNC3(DMA_CHAN_ON, 0, LTQ_DMA_CCTRL);
	FUNC6();
	FUNC3(0, DMA_CHAN_RST, LTQ_DMA_CCTRL);
	while (FUNC1(LTQ_DMA_CCTRL) & DMA_CHAN_RST)
		;
	FUNC5(&ltq_dma_lock, flags);
}