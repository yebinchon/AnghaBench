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
typedef  unsigned int phys_addr_t ;

/* Variables and functions */
 unsigned int PAGE_MASK ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 void* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 struct page* FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 

__attribute__((used)) static inline void FUNC5(phys_addr_t paddr, size_t size,
		void (*fn)(unsigned long start, unsigned long end))
{
	struct page *page = FUNC3(paddr >> PAGE_SHIFT);
	unsigned offset = paddr & ~PAGE_MASK;
	size_t left = size;
	unsigned long start;

	do {
		size_t len = left;

		if (FUNC0(page)) {
			void *addr;

			if (offset + len > PAGE_SIZE) {
				if (offset >= PAGE_SIZE) {
					page += offset >> PAGE_SHIFT;
					offset &= ~PAGE_MASK;
				}
				len = PAGE_SIZE - offset;
			}

			addr = FUNC1(page);
			start = (unsigned long)(addr + offset);
			fn(start, start + len);
			FUNC2(addr);
		} else {
			start = (unsigned long)FUNC4(paddr);
			fn(start, start + size);
		}
		offset = 0;
		page++;
		left -= len;
	} while (left);
}