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
struct mm_struct {int /*<<< orphan*/  pgd; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

pte_t *FUNC1(struct mm_struct *mm, unsigned long addr, unsigned long sz)
{
	/*
	 * Only called for hugetlbfs pages, hence can ignore THP and the
	 * irq disabled walk.
	 */
	return FUNC0(mm->pgd, addr, NULL, NULL);
}