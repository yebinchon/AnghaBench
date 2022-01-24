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
struct mm_struct {int /*<<< orphan*/  pgd; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned int PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_1__* current ; 
 struct mm_struct init_mm ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct pt_regs*) ; 

unsigned long FUNC8(struct pt_regs *regs, unsigned long addr)
{
	pte_t *ptep;
	unsigned int shift;
	unsigned long pfn, flags;
	struct mm_struct *mm;

	if (FUNC7(regs))
		mm = current->mm;
	else
		mm = &init_mm;

	FUNC3(flags);
	ptep = FUNC0(mm->pgd, addr, NULL, &shift);

	if (!ptep || FUNC5(*ptep)) {
		pfn = ULONG_MAX;
		goto out;
	}

	if (shift <= PAGE_SHIFT)
		pfn = FUNC4(*ptep);
	else {
		unsigned long rpnmask = (1ul << shift) - PAGE_SIZE;
		pfn = FUNC4(FUNC1(FUNC6(*ptep) | (addr & rpnmask)));
	}

out:
	FUNC2(flags);
	return pfn;
}