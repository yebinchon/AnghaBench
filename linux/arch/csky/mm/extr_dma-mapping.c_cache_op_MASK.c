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
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7(phys_addr_t paddr, size_t size,
			    void (*fn)(unsigned long start, unsigned long end))
{
	struct page *page    = FUNC6(paddr);
	void *start          = FUNC1(FUNC5(page));
	unsigned long offset = FUNC4(paddr);
	size_t left          = size;

	do {
		size_t len = left;

		if (offset + len > PAGE_SIZE)
			len = PAGE_SIZE - offset;

		if (FUNC0(page)) {
			start = FUNC2(page);

			fn((unsigned long)start + offset,
					(unsigned long)start + offset + len);

			FUNC3(start);
		} else {
			fn((unsigned long)start + offset,
					(unsigned long)start + offset + len);
		}
		offset = 0;

		page++;
		start += PAGE_SIZE;
		left -= len;
	} while (left);
}