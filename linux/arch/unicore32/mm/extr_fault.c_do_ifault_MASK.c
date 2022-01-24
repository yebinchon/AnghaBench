#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_2__ {int /*<<< orphan*/ * pgd; } ;

/* Variables and functions */
 unsigned long TASK_SIZE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned int,struct pt_regs*) ; 
 int FUNC2 (unsigned long,unsigned int,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ init_mm ; 
 unsigned int FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC10(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
{
	unsigned int index;
	pgd_t *pgd, *pgd_k;
	pmd_t *pmd, *pmd_k;

	if (addr < TASK_SIZE)
		return FUNC2(addr, fsr, regs);

	if (FUNC9(regs))
		goto bad_area;

	index = FUNC4(addr);

	pgd = FUNC0() + index;
	pgd_k = init_mm.pgd + index;

	if (FUNC5(*pgd_k))
		goto bad_area;

	pmd_k = FUNC7((pud_t *) pgd_k, addr);
	pmd = FUNC7((pud_t *) pgd, addr);

	if (FUNC6(*pmd_k))
		goto bad_area;

	FUNC8(pmd, *pmd_k);
	FUNC3(pmd);
	return 0;

bad_area:
	FUNC1(addr, fsr, regs);
	return 0;
}