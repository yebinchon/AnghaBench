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
struct mm_struct {int /*<<< orphan*/  page_table_lock; int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int PTE_FRAG_NR ; 
 int PTE_FRAG_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static pte_t *FUNC4(struct mm_struct *mm)
{
	void *pte_frag, *ret;

	if (PTE_FRAG_NR == 1)
		return NULL;

	FUNC2(&mm->page_table_lock);
	ret = FUNC0(&mm->context);
	if (ret) {
		pte_frag = ret + PTE_FRAG_SIZE;
		/*
		 * If we have taken up all the fragments mark PTE page NULL
		 */
		if (((unsigned long)pte_frag & ~PAGE_MASK) == 0)
			pte_frag = NULL;
		FUNC1(&mm->context, pte_frag);
	}
	FUNC3(&mm->page_table_lock);
	return (pte_t *)ret;
}