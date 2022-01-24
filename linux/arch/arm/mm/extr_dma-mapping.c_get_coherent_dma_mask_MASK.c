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
typedef  scalar_t__ u64 ;
struct device {scalar_t__ coherent_dma_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 

__attribute__((used)) static u64 FUNC3(struct device *dev)
{
	u64 mask = (u64)FUNC0(32);

	if (dev) {
		mask = dev->coherent_dma_mask;

		/*
		 * Sanity check the DMA mask - it must be non-zero, and
		 * must be able to be satisfied by a DMA allocation.
		 */
		if (mask == 0) {
			FUNC2(dev, "coherent DMA mask is unset\n");
			return 0;
		}

		if (!FUNC1(dev, mask, true))
			return 0;
	}

	return mask;
}