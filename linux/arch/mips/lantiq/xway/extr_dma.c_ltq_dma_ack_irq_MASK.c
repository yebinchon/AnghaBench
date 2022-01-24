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
struct ltq_dma_channel {int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_IRQ_ACK ; 
 int /*<<< orphan*/  LTQ_DMA_CIS ; 
 int /*<<< orphan*/  LTQ_DMA_CS ; 
 int /*<<< orphan*/  ltq_dma_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC3(struct ltq_dma_channel *ch)
{
	unsigned long flags;

	FUNC1(&ltq_dma_lock, flags);
	FUNC0(ch->nr, LTQ_DMA_CS);
	FUNC0(DMA_IRQ_ACK, LTQ_DMA_CIS);
	FUNC2(&ltq_dma_lock, flags);
}