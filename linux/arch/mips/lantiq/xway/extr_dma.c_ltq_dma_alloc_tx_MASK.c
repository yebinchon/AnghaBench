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
 int DMA_DESCPT ; 
 int DMA_TX ; 
 int DMA_WEIGHT ; 
 int /*<<< orphan*/  LTQ_DMA_CCTRL ; 
 int /*<<< orphan*/  LTQ_DMA_CIE ; 
 int /*<<< orphan*/  LTQ_DMA_IRNEN ; 
 int /*<<< orphan*/  FUNC0 (struct ltq_dma_channel*) ; 
 int /*<<< orphan*/  ltq_dma_lock ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC5(struct ltq_dma_channel *ch)
{
	unsigned long flags;

	FUNC0(ch);

	FUNC3(&ltq_dma_lock, flags);
	FUNC1(DMA_DESCPT, LTQ_DMA_CIE);
	FUNC2(0, 1 << ch->nr, LTQ_DMA_IRNEN);
	FUNC1(DMA_WEIGHT | DMA_TX, LTQ_DMA_CCTRL);
	FUNC4(&ltq_dma_lock, flags);
}