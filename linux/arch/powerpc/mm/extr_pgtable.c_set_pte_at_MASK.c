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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct mm_struct *mm, unsigned long addr, pte_t *ptep,
		pte_t pte)
{
	/*
	 * Make sure hardware valid bit is not set. We don't do
	 * tlb flush for this update.
	 */
	FUNC0(FUNC2(*ptep) && !FUNC4(*ptep));

	/* Add the pte bit when trying to set a pte */
	pte = FUNC3(pte);

	/* Note: mm->context.id might not yet have been assigned as
	 * this context might not have been activated yet when this
	 * is called.
	 */
	pte = FUNC5(pte);

	/* Perform the setting of the PTE */
	FUNC1(mm, addr, ptep, pte, 0);
}