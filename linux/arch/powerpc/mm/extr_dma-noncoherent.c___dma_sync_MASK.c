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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DMA_BIDIRECTIONAL 131 
#define  DMA_FROM_DEVICE 130 
#define  DMA_NONE 129 
#define  DMA_TO_DEVICE 128 
 int /*<<< orphan*/  L1_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC4(void *vaddr, size_t size, int direction)
{
	unsigned long start = (unsigned long)vaddr;
	unsigned long end   = start + size;

	switch (direction) {
	case DMA_NONE:
		FUNC0();
	case DMA_FROM_DEVICE:
		/*
		 * invalidate only when cache-line aligned otherwise there is
		 * the potential for discarding uncommitted data from the cache
		 */
		if ((start | end) & (L1_CACHE_BYTES - 1))
			FUNC2(start, end);
		else
			FUNC3(start, end);
		break;
	case DMA_TO_DEVICE:		/* writeback only */
		FUNC1(start, end);
		break;
	case DMA_BIDIRECTIONAL:	/* writeback and invalidate */
		FUNC2(start, end);
		break;
	}
}