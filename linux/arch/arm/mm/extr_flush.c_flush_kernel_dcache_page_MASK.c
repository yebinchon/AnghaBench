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
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_HIGHMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (struct address_space*) ; 
 void* FUNC5 (struct page*) ; 
 struct address_space* FUNC6 (struct page*) ; 

void FUNC7(struct page *page)
{
	if (FUNC3() || FUNC2()) {
		struct address_space *mapping;

		mapping = FUNC6(page);

		if (!mapping || FUNC4(mapping)) {
			void *addr;

			addr = FUNC5(page);
			/*
			 * kmap_atomic() doesn't set the page virtual
			 * address for highmem pages, and
			 * kunmap_atomic() takes care of cache
			 * flushing already.
			 */
			if (!FUNC0(CONFIG_HIGHMEM) || addr)
				FUNC1(addr, PAGE_SIZE);
		}
	}
}