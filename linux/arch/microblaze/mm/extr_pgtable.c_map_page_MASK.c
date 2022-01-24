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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  mem_init_done ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(unsigned long va, phys_addr_t pa, int flags)
{
	pmd_t *pd;
	pte_t *pg;
	int err = -ENOMEM;
	/* Use upper 10 bits of VA to index the first level map */
	pd = FUNC4(FUNC3(va), va);
	/* Use middle 10 bits of VA to index the second-level map */
	pg = FUNC5(pd, va); /* from powerpc - pgtable.c */
	/* pg = pte_alloc_kernel(&init_mm, pd, va); */

	if (pg != NULL) {
		err = 0;
		FUNC6(&init_mm, va, pg, FUNC2(pa >> PAGE_SHIFT,
				FUNC0(flags)));
		if (FUNC7(mem_init_done))
			FUNC1(va);
	}
	return err;
}