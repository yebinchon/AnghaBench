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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC1 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 

pte_t *FUNC3(struct mm_struct *mm, unsigned long addr,
		      unsigned long sz)
{
	pgd_t *pgd;
	pud_t *pud;
	pte_t *pte = NULL;

	pgd = FUNC0(mm, addr);
	pud = FUNC2(mm, pgd, addr);
	if (pud)
		pte = (pte_t *)FUNC1(mm, pud, addr);

	return pte;
}