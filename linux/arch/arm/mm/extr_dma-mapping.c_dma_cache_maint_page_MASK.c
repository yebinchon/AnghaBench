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
struct page {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 () ; 
 void* FUNC2 (struct page*) ; 
 void* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 void* FUNC6 (struct page*) ; 
 unsigned long FUNC7 (struct page*) ; 
 struct page* FUNC8 (unsigned long) ; 

__attribute__((used)) static void FUNC9(struct page *page, unsigned long offset,
	size_t size, enum dma_data_direction dir,
	void (*op)(const void *, size_t, int))
{
	unsigned long pfn;
	size_t left = size;

	pfn = FUNC7(page) + offset / PAGE_SIZE;
	offset %= PAGE_SIZE;

	/*
	 * A single sg entry may refer to multiple physically contiguous
	 * pages.  But we still need to process highmem pages individually.
	 * If highmem is not configured then the bulk of this loop gets
	 * optimized out.
	 */
	do {
		size_t len = left;
		void *vaddr;

		page = FUNC8(pfn);

		if (FUNC0(page)) {
			if (len + offset > PAGE_SIZE)
				len = PAGE_SIZE - offset;

			if (FUNC1()) {
				vaddr = FUNC2(page);
				op(vaddr + offset, len, dir);
				FUNC4(vaddr);
			} else {
				vaddr = FUNC3(page);
				if (vaddr) {
					op(vaddr + offset, len, dir);
					FUNC5(page);
				}
			}
		} else {
			vaddr = FUNC6(page) + offset;
			op(vaddr, len, dir);
		}
		offset = 0;
		pfn++;
		left -= len;
	} while (left);
}