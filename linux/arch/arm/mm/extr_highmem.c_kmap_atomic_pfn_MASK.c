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
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  kmap_prot ; 
 void* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int /*<<< orphan*/ ) ; 
 struct page* FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 () ; 

void *FUNC13(unsigned long pfn)
{
	unsigned long vaddr;
	int idx, type;
	struct page *page = FUNC8(pfn);

	FUNC9();
	FUNC6();
	if (!FUNC1(page))
		return FUNC5(page);

	type = FUNC4();
	idx = FIX_KMAP_BEGIN + type + KM_TYPE_NR * FUNC12();
	vaddr = FUNC2(idx);
#ifdef CONFIG_DEBUG_HIGHMEM
	BUG_ON(!pte_none(get_fixmap_pte(vaddr)));
#endif
	FUNC11(idx, FUNC7(pfn, kmap_prot));

	return (void *)vaddr;
}