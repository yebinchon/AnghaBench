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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FIXADDR_START ; 
 int FIX_KMAP_BEGIN ; 
 int KM_TYPE_NR ; 
 int /*<<< orphan*/  LAST_PKMAP ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * pkmap_page_table ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int FUNC14 () ; 

void FUNC15(void *kvaddr)
{
	unsigned long vaddr = (unsigned long) kvaddr & PAGE_MASK;
	int idx, type;

	if (kvaddr >= (void *)FIXADDR_START) {
		type = FUNC7();
		idx = FIX_KMAP_BEGIN + type + KM_TYPE_NR * FUNC14();

		if (FUNC6())
			FUNC3((void *)vaddr, PAGE_SIZE);
#ifdef CONFIG_DEBUG_HIGHMEM
		BUG_ON(vaddr != __fix_to_virt(idx));
		set_fixmap_pte(idx, __pte(0));
#else
		(void) idx;  /* to kill a warning */
#endif
		FUNC8();
	} else if (vaddr >= FUNC1(0) && vaddr < FUNC1(LAST_PKMAP)) {
		/* this address was obtained through kmap_high_get() */
		FUNC9(FUNC12(pkmap_page_table[FUNC2(vaddr)]));
	}
	FUNC10();
	FUNC11();
}