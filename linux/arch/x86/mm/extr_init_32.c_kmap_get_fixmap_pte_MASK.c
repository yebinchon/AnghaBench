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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline pte_t *FUNC5(unsigned long vaddr)
{
	pgd_t *pgd = FUNC1(vaddr);
	p4d_t *p4d = FUNC0(pgd, vaddr);
	pud_t *pud = FUNC4(p4d, vaddr);
	pmd_t *pmd = FUNC2(pud, vaddr);
	return FUNC3(pmd, vaddr);
}