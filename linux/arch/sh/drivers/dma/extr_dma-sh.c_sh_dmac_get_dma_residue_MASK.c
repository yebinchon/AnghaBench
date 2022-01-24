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
struct dma_channel {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 scalar_t__ CHCR ; 
 int CHCR_DE ; 
 scalar_t__ TCR ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct dma_channel*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dma_channel *chan)
{
	if (!(FUNC0(FUNC2(chan->chan) + CHCR) & CHCR_DE))
		return 0;

	return FUNC0(FUNC2(chan->chan) + TCR)
		 << FUNC1(chan);
}