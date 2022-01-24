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
struct mm_walk {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long HPAGE_MASK ; 
 unsigned long HPAGE_SIZE ; 
 int /*<<< orphan*/  PG_arch_1 ; 
 unsigned long _SEGMENT_ENTRY_INVALID ; 
 unsigned long _SEGMENT_ENTRY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(pte_t *pte, unsigned long addr,
				      unsigned long hmask, unsigned long next,
				      struct mm_walk *walk)
{
	pmd_t *pmd = (pmd_t *)pte;
	unsigned long start, end;
	struct page *page = FUNC1(*pmd);

	/*
	 * The write check makes sure we do not set a key on shared
	 * memory. This is needed as the walker does not differentiate
	 * between actual guest memory and the process executable or
	 * shared libraries.
	 */
	if (FUNC2(*pmd) & _SEGMENT_ENTRY_INVALID ||
	    !(FUNC2(*pmd) & _SEGMENT_ENTRY_WRITE))
		return 0;

	start = FUNC2(*pmd) & HPAGE_MASK;
	end = start + HPAGE_SIZE - 1;
	FUNC0(start, end);
	FUNC3(PG_arch_1, &page->flags);
	return 0;
}