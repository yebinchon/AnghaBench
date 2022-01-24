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
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct address_space*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 struct address_space* FUNC7 (struct page*) ; 

void FUNC8(struct page *page)
{
	struct address_space *mapping = FUNC7(page);
	unsigned long addr;

	if (mapping && !FUNC5(mapping)) {
		FUNC1(page);
		return;
	}

	/*
	 * We could delay the flush for the !page_mapping case too.  But that
	 * case is for exec env/arg pages and those are %99 certainly going to
	 * get faulted into the tlb (and thus flushed) anyways.
	 */
	if (FUNC0(page))
		addr = (unsigned long)FUNC4(page);
	else
		addr = (unsigned long)FUNC6(page);

	FUNC3(addr);

	if (FUNC0(page))
		FUNC2((void *)addr);
}