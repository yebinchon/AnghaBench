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
typedef  int /*<<< orphan*/  u32 ;
struct dma_channel {int flags; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 scalar_t__ CHCR ; 
 int /*<<< orphan*/  CHCR_DE ; 
 int /*<<< orphan*/  CHCR_IE ; 
 int DMA_TEI_CAPABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dma_channel *chan)
{
	int irq;
	u32 chcr;

	chcr = FUNC0(FUNC2(chan->chan) + CHCR);
	chcr |= CHCR_DE;

	if (chan->flags & DMA_TEI_CAPABLE)
		chcr |= CHCR_IE;

	FUNC1(chcr, (FUNC2(chan->chan) + CHCR));

	if (chan->flags & DMA_TEI_CAPABLE) {
		irq = FUNC4(chan->chan);
		FUNC3(irq);
	}
}