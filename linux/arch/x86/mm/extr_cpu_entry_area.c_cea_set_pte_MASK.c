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
typedef  int phys_addr_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  X86_FEATURE_PGE ; 
 int /*<<< orphan*/  _PAGE_GLOBAL ; 
 int _PAGE_PRESENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 

void FUNC5(void *cea_vaddr, phys_addr_t pa, pgprot_t flags)
{
	unsigned long va = (unsigned long) cea_vaddr;
	pte_t pte = FUNC1(pa >> PAGE_SHIFT, flags);

	/*
	 * The cpu_entry_area is shared between the user and kernel
	 * page tables.  All of its ptes can safely be global.
	 * _PAGE_GLOBAL gets reused to help indicate PROT_NONE for
	 * non-present PTEs, so be careful not to set it in that
	 * case to avoid confusion.
	 */
	if (FUNC0(X86_FEATURE_PGE) &&
	    (FUNC2(flags) & _PAGE_PRESENT))
		pte = FUNC3(pte, _PAGE_GLOBAL);

	FUNC4(va, pte);
}