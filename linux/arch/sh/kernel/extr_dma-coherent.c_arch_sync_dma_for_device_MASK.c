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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DMA_BIDIRECTIONAL 130 
#define  DMA_FROM_DEVICE 129 
#define  DMA_TO_DEVICE 128 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct device *dev, phys_addr_t paddr,
		size_t size, enum dma_data_direction dir)
{
	void *addr = FUNC5(FUNC4(paddr));

	switch (dir) {
	case DMA_FROM_DEVICE:		/* invalidate only */
		FUNC1(addr, size);
		break;
	case DMA_TO_DEVICE:		/* writeback only */
		FUNC3(addr, size);
		break;
	case DMA_BIDIRECTIONAL:		/* writeback and invalidate */
		FUNC2(addr, size);
		break;
	default:
		FUNC0();
	}
}