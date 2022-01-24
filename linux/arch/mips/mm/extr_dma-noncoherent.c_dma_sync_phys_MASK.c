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
typedef  unsigned long phys_addr_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,int) ; 
 void* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (struct page*) ; 
 struct page* FUNC5 (unsigned long) ; 

__attribute__((used)) static inline void FUNC6(phys_addr_t paddr, size_t size,
		enum dma_data_direction dir)
{
	struct page *page = FUNC5(paddr >> PAGE_SHIFT);
	unsigned long offset = paddr & ~PAGE_MASK;
	size_t left = size;

	do {
		size_t len = left;

		if (FUNC0(page)) {
			void *addr;

			if (offset + len > PAGE_SIZE)
				len = PAGE_SIZE - offset;

			addr = FUNC2(page);
			FUNC1(addr + offset, len, dir);
			FUNC3(addr);
		} else
			FUNC1(FUNC4(page) + offset, size, dir);
		offset = 0;
		page++;
		left -= len;
	} while (left);
}