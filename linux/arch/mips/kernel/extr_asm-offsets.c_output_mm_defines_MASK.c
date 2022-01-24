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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MM_CONTEXT ; 
 int /*<<< orphan*/  MM_PGD ; 
 int /*<<< orphan*/  MM_USERS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int PGDIR_SHIFT ; 
 int PGD_ORDER ; 
 int PGD_T_LOG2 ; 
 int PMD_ORDER ; 
 int PMD_SHIFT ; 
 int PMD_T_LOG2 ; 
 int PTE_ORDER ; 
 int PTE_T_LOG2 ; 
 int PTRS_PER_PGD ; 
 int PTRS_PER_PMD ; 
 int PTRS_PER_PTE ; 
 int /*<<< orphan*/  STRUCT_PAGE_SIZE ; 
 int /*<<< orphan*/  _PAGE_SHIFT ; 
 int /*<<< orphan*/  _PAGE_SIZE ; 
 int /*<<< orphan*/  _PGDIR_SHIFT ; 
 int /*<<< orphan*/  _PGD_ORDER ; 
 int /*<<< orphan*/  _PGD_T_LOG2 ; 
 int /*<<< orphan*/  _PGD_T_SIZE ; 
 int /*<<< orphan*/  _PMD_ORDER ; 
 int /*<<< orphan*/  _PMD_SHIFT ; 
 int /*<<< orphan*/  _PMD_T_LOG2 ; 
 int /*<<< orphan*/  _PMD_T_SIZE ; 
 int /*<<< orphan*/  _PTE_ORDER ; 
 int /*<<< orphan*/  _PTE_T_LOG2 ; 
 int /*<<< orphan*/  _PTE_T_SIZE ; 
 int /*<<< orphan*/  _PTRS_PER_PGD ; 
 int /*<<< orphan*/  _PTRS_PER_PMD ; 
 int /*<<< orphan*/  _PTRS_PER_PTE ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  mm_struct ; 
 int /*<<< orphan*/  mm_users ; 
 int /*<<< orphan*/  pgd ; 

void FUNC4(void)
{
	FUNC1("Size of struct page");
	FUNC2(STRUCT_PAGE_SIZE, sizeof(struct page));
	FUNC0();
	FUNC1("Linux mm_struct offsets.");
	FUNC3(MM_USERS, mm_struct, mm_users);
	FUNC3(MM_PGD, mm_struct, pgd);
	FUNC3(MM_CONTEXT, mm_struct, context);
	FUNC0();
	FUNC2(_PGD_T_SIZE, sizeof(pgd_t));
	FUNC2(_PMD_T_SIZE, sizeof(pmd_t));
	FUNC2(_PTE_T_SIZE, sizeof(pte_t));
	FUNC0();
	FUNC2(_PGD_T_LOG2, PGD_T_LOG2);
#ifndef __PAGETABLE_PMD_FOLDED
	FUNC2(_PMD_T_LOG2, PMD_T_LOG2);
#endif
	FUNC2(_PTE_T_LOG2, PTE_T_LOG2);
	FUNC0();
	FUNC2(_PGD_ORDER, PGD_ORDER);
#ifndef __PAGETABLE_PMD_FOLDED
	FUNC2(_PMD_ORDER, PMD_ORDER);
#endif
	FUNC2(_PTE_ORDER, PTE_ORDER);
	FUNC0();
	FUNC2(_PMD_SHIFT, PMD_SHIFT);
	FUNC2(_PGDIR_SHIFT, PGDIR_SHIFT);
	FUNC0();
	FUNC2(_PTRS_PER_PGD, PTRS_PER_PGD);
	FUNC2(_PTRS_PER_PMD, PTRS_PER_PMD);
	FUNC2(_PTRS_PER_PTE, PTRS_PER_PTE);
	FUNC0();
	FUNC2(_PAGE_SHIFT, PAGE_SHIFT);
	FUNC2(_PAGE_SIZE, PAGE_SIZE);
	FUNC0();
}