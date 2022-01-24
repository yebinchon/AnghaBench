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
struct address_space {int dummy; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PG_dcache_clean ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct address_space*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 struct address_space* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct page *page)
{
	struct address_space *mapping;

	/*
	 * The zero page is never written to, so never has any dirty
	 * cache lines, and therefore never needs to be flushed.
	 */
	if (page == FUNC0(0))
		return;

	mapping = FUNC7(page);

	/* Flush this page if there are aliases. */
	if (mapping && !FUNC5(mapping)) {
		FUNC2(PG_dcache_clean, &page->flags);
	} else {
		FUNC1(mapping, page);
		if (mapping) {
			unsigned long start = (unsigned long)FUNC6(page);
			FUNC3(mapping,  page);
			FUNC4(start, start + PAGE_SIZE);
		}
		FUNC8(PG_dcache_clean, &page->flags);
	}
}