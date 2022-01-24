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
 int /*<<< orphan*/  PG_dcache_clean ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*) ; 
 struct address_space* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct page *page)
{
	struct address_space *mapping;

	/*
	 * The zero page is never written to, so never has any dirty
	 * cache lines, and therefore never needs to be flushed.
	 */
	if (page == FUNC0(0))
		return;

	mapping = FUNC5(page);

	if (mapping && !FUNC4(mapping))
		FUNC3(PG_dcache_clean, &page->flags);
	else {
		FUNC1(mapping, page);
		if (mapping)
			FUNC2();
		FUNC6(PG_dcache_clean, &page->flags);
	}
}