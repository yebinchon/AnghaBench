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
struct ltq_dma_channel {int nr; } ;

/* Variables and functions */
 int DMA_CHAN_ON ; 
 int /*<<< orphan*/  LTQ_DMA_CCTRL ; 
 int /*<<< orphan*/  LTQ_DMA_CS ; 
 int /*<<< orphan*/  LTQ_DMA_IRNEN ; 
 int /*<<< orphan*/  ltq_dma_lock ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC4(struct ltq_dma_channel *ch)
{
	unsigned long flag;

	FUNC2(&ltq_dma_lock, flag);
	FUNC0(ch->nr, LTQ_DMA_CS);
	FUNC1(DMA_CHAN_ON, 0, LTQ_DMA_CCTRL);
	FUNC1(1 << ch->nr, 0, LTQ_DMA_IRNEN);
	FUNC3(&ltq_dma_lock, flag);
}