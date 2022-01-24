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
 int /*<<< orphan*/  FUNC2 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 struct address_space* FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(struct page *page)
{
	struct address_space *mapping;

	/*
	 * The zero page is never written to, so never has any dirty
	 * cache lines, and therefore never needs to be flushed.
	 */
	if (page == FUNC0(0))
		return;

	if (!FUNC6() && FUNC4()) {
		if (FUNC11(PG_dcache_clean, &page->flags))
			FUNC7(PG_dcache_clean, &page->flags);
		return;
	}

	mapping = FUNC9(page);

	if (!FUNC6() &&
	    mapping && !FUNC8(page))
		FUNC7(PG_dcache_clean, &page->flags);
	else {
		FUNC2(mapping, page);
		if (mapping && FUNC5())
			FUNC1(mapping, page);
		else if (mapping)
			FUNC3();
		FUNC10(PG_dcache_clean, &page->flags);
	}
}