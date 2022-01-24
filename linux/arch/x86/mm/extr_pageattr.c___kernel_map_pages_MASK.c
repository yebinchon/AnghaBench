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

/* Variables and functions */
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct page *page, int numpages, int enable)
{
	if (FUNC0(page))
		return;
	if (!enable) {
		FUNC5(FUNC6(page),
					   numpages * PAGE_SIZE);
	}

	/*
	 * The return value is ignored as the calls cannot fail.
	 * Large pages for identity mappings are not used at boot time
	 * and hence no memory allocations during large page split.
	 */
	if (enable)
		FUNC3(page, numpages);
	else
		FUNC2(page, numpages);

	/*
	 * We should perform an IPI and flush all tlbs,
	 * but that can deadlock->flush only current cpu.
	 * Preemption needs to be disabled around __flush_tlb_all() due to
	 * CR3 reload in __native_flush_tlb().
	 */
	FUNC7();
	FUNC1();
	FUNC8();

	FUNC4();
}