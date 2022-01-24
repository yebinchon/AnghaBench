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
struct dma_channel {int flags; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int DMA_TEI_CAPABLE ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  dma_tei ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_channel*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct dma_channel *chan)
{
	if (FUNC2(!(chan->flags & DMA_TEI_CAPABLE)))
		return 0;

	return FUNC1(FUNC0(chan->chan), dma_tei, IRQF_SHARED,
			   chan->dev_id, chan);
}