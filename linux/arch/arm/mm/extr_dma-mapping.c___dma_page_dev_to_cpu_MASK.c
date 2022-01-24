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
struct page {int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int DMA_TO_DEVICE ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  PG_dcache_clean ; 
 int /*<<< orphan*/  FUNC0 (struct page*,unsigned long,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmac_unmap_area ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 unsigned long FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct page *page, unsigned long off,
	size_t size, enum dma_data_direction dir)
{
	phys_addr_t paddr = FUNC3(page) + off;

	/* FIXME: non-speculating: not required */
	/* in any case, don't bother invalidating if DMA to device */
	if (dir != DMA_TO_DEVICE) {
		FUNC1(paddr, paddr + size);

		FUNC0(page, off, size, dir, dmac_unmap_area);
	}

	/*
	 * Mark the D-cache clean for these pages to avoid extra flushing.
	 */
	if (dir != DMA_TO_DEVICE && size >= PAGE_SIZE) {
		unsigned long pfn;
		size_t left = size;

		pfn = FUNC2(page) + off / PAGE_SIZE;
		off %= PAGE_SIZE;
		if (off) {
			pfn++;
			left -= PAGE_SIZE - off;
		}
		while (left >= PAGE_SIZE) {
			page = FUNC4(pfn++);
			FUNC5(PG_dcache_clean, &page->flags);
			left -= PAGE_SIZE;
		}
	}
}