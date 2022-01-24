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
 unsigned long PMD_SIZE ; 
 unsigned long PUD_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC1 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 

pte_t *FUNC4(struct mm_struct *mm,
			unsigned long addr, unsigned long sz)
{
	pgd_t *pgdp;
	p4d_t *p4dp;
	pud_t *pudp;
	pmd_t *pmdp = NULL;

	pgdp = FUNC1(mm, addr);
	p4dp = FUNC0(mm, pgdp, addr);
	if (p4dp) {
		pudp = FUNC3(mm, p4dp, addr);
		if (pudp) {
			if (sz == PUD_SIZE)
				return (pte_t *) pudp;
			else if (sz == PMD_SIZE)
				pmdp = FUNC2(mm, pudp, addr);
		}
	}
	return (pte_t *) pmdp;
}