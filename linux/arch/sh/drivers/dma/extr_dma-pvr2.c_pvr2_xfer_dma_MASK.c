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
struct dma_channel {int dar; int count; int mode; scalar_t__ sar; } ;

/* Variables and functions */
 int DMA_MODE_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  PVR2_DMA_ADDR ; 
 int /*<<< orphan*/  PVR2_DMA_COUNT ; 
 int /*<<< orphan*/  PVR2_DMA_MODE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ xfer_complete ; 

__attribute__((used)) static int FUNC1(struct dma_channel *chan)
{
	if (chan->sar || !chan->dar)
		return -EINVAL;

	xfer_complete = 0;

	FUNC0(chan->dar, PVR2_DMA_ADDR);
	FUNC0(chan->count, PVR2_DMA_COUNT);
	FUNC0(chan->mode & DMA_MODE_MASK, PVR2_DMA_MODE);

	return 0;
}