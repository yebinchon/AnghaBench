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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

pte_t *FUNC8(struct mm_struct *mm,
		       unsigned long addr, unsigned long sz)
{
	pgd_t *pgdp;
	p4d_t *p4dp;
	pud_t *pudp;
	pmd_t *pmdp = NULL;

	pgdp = FUNC2(mm, addr);
	if (FUNC3(*pgdp)) {
		p4dp = FUNC0(pgdp, addr);
		if (FUNC1(*p4dp)) {
			pudp = FUNC6(p4dp, addr);
			if (FUNC7(*pudp)) {
				if (FUNC5(*pudp))
					return (pte_t *) pudp;
				pmdp = FUNC4(pudp, addr);
			}
		}
	}
	return (pte_t *) pmdp;
}