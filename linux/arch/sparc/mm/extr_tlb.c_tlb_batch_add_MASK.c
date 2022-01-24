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
struct mm_struct {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,struct page*) ; 
 scalar_t__ hypervisor ; 
 scalar_t__ FUNC2 (struct page*) ; 
 struct address_space* FUNC3 (struct page*) ; 
 struct page* FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*,unsigned long,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ tlb_type ; 

void FUNC10(struct mm_struct *mm, unsigned long vaddr,
		   pte_t *ptep, pte_t orig, int fullmm,
		   unsigned int hugepage_shift)
{
	if (tlb_type != hypervisor &&
	    FUNC6(orig)) {
		unsigned long paddr, pfn = FUNC8(orig);
		struct address_space *mapping;
		struct page *page;

		if (!FUNC5(pfn))
			goto no_cache_flush;

		page = FUNC4(pfn);
		if (FUNC0(page))
			goto no_cache_flush;

		/* A real file page? */
		mapping = FUNC3(page);
		if (!mapping)
			goto no_cache_flush;

		paddr = (unsigned long) FUNC2(page);
		if ((paddr ^ vaddr) & (1 << 13))
			FUNC1(mm, page);
	}

no_cache_flush:
	if (!fullmm)
		FUNC9(mm, vaddr, FUNC7(orig), hugepage_shift);
}