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
typedef  int u32 ;
struct dma_channel {int flags; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 scalar_t__ CHCR ; 
 int CHCR_DE ; 
 int CHCR_IE ; 
 int CHCR_TE ; 
 int DMA_TEI_CAPABLE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dma_channel *chan)
{
	int irq;
	u32 chcr;

	if (chan->flags & DMA_TEI_CAPABLE) {
		irq = FUNC4(chan->chan);
		FUNC2(irq);
	}

	chcr = FUNC0(FUNC3(chan->chan) + CHCR);
	chcr &= ~(CHCR_DE | CHCR_TE | CHCR_IE);
	FUNC1(chcr, (FUNC3(chan->chan) + CHCR));
}