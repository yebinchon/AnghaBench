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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  PG_arch_1 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC6 (pte_t pte)
{
	unsigned long addr;
	struct page *page;

	page = FUNC3(pte);
	addr = (unsigned long) FUNC1(page);

	if (FUNC5(PG_arch_1, &page->flags))
		return;				/* i-cache is already coherent with d-cache */

	FUNC0(addr, addr + FUNC2(page));
	FUNC4(PG_arch_1, &page->flags);	/* mark page as clean */
}