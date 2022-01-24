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
struct page {unsigned long index; int /*<<< orphan*/  flags; } ;
struct address_space {int dummy; } ;
typedef  unsigned long phys_addr_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PG_dc_clean ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 struct address_space* FUNC7 (struct page*) ; 

void FUNC8(struct page *page)
{
	struct address_space *mapping;

	if (!FUNC2()) {
		FUNC3(PG_dc_clean, &page->flags);
		return;
	}

	/* don't handle anon pages here */
	mapping = FUNC7(page);
	if (!mapping)
		return;

	/*
	 * pagecache page, file not yet mapped to userspace
	 * Make a note that K-mapping is dirty
	 */
	if (!FUNC4(mapping)) {
		FUNC3(PG_dc_clean, &page->flags);
	} else if (FUNC6(page)) {

		/* kernel reading from page with U-mapping */
		phys_addr_t paddr = (unsigned long)FUNC5(page);
		unsigned long vaddr = page->index << PAGE_SHIFT;

		if (FUNC1(paddr, vaddr))
			FUNC0(paddr, vaddr);
	}
}