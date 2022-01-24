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
#define  DMA_NONE 128 
 int /*<<< orphan*/  __invalidate_dcache_range ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

void FUNC2(struct device *dev, phys_addr_t paddr,
		size_t size, enum dma_data_direction dir)
{
	switch (dir) {
	case DMA_BIDIRECTIONAL:
	case DMA_FROM_DEVICE:
		FUNC1(paddr, size, __invalidate_dcache_range);
		break;

	case DMA_NONE:
		FUNC0();
		break;

	default:
		break;
	}
}