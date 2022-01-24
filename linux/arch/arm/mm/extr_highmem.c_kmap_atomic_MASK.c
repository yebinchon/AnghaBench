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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FIX_KMAP_BEGIN ; 
 int KM_TYPE_NR ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 unsigned long FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 () ; 
 void* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  kmap_prot ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC13 () ; 

void *FUNC14(struct page *page)
{
	unsigned int idx;
	unsigned long vaddr;
	void *kmap;
	int type;

	FUNC10();
	FUNC9();
	if (!FUNC1(page))
		return FUNC8(page);

#ifdef CONFIG_DEBUG_HIGHMEM
	/*
	 * There is no cache coherency issue when non VIVT, so force the
	 * dedicated kmap usage for better debugging purposes in that case.
	 */
	if (!cache_is_vivt())
		kmap = NULL;
	else
#endif
		kmap = FUNC6(page);
	if (kmap)
		return kmap;

	type = FUNC5();

	idx = FIX_KMAP_BEGIN + type + KM_TYPE_NR * FUNC13();
	vaddr = FUNC2(idx);
#ifdef CONFIG_DEBUG_HIGHMEM
	/*
	 * With debugging enabled, kunmap_atomic forces that entry to 0.
	 * Make sure it was indeed properly unmapped.
	 */
	BUG_ON(!pte_none(get_fixmap_pte(vaddr)));
#endif
	/*
	 * When debugging is off, kunmap_atomic leaves the previous mapping
	 * in place, so the contained TLB flush ensures the TLB is updated
	 * with the new mapping.
	 */
	FUNC12(idx, FUNC7(page, kmap_prot));

	return (void *)vaddr;
}