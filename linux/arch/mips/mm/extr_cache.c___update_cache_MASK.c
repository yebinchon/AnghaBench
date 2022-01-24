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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 unsigned long PAGE_MASK ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  cpu_has_ic_fills_f_dc ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 struct page* FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

void FUNC13(unsigned long address, pte_t pte)
{
	struct page *page;
	unsigned long pfn, addr;
	int exec = !FUNC10(pte) && !cpu_has_ic_fills_f_dc;

	pfn = FUNC11(pte);
	if (FUNC12(!FUNC9(pfn)))
		return;
	page = FUNC8(pfn);
	if (FUNC2(page)) {
		if (FUNC1(page))
			addr = (unsigned long)FUNC5(page);
		else
			addr = (unsigned long)FUNC6(page);

		if (exec || FUNC7(addr, address & PAGE_MASK))
			FUNC4(addr);

		if (FUNC1(page))
			FUNC3((void *)addr);

		FUNC0(page);
	}
}