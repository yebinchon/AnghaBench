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
struct mmu_gather {int /*<<< orphan*/  mm; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long PUD_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct mmu_gather *tlb, pud_t *pud,
				   unsigned long addr, unsigned long end,
				   unsigned long floor, unsigned long ceiling)
{
	pmd_t *pmd;
	unsigned long next;
	unsigned long start;

	start = addr;
	pmd = FUNC7(pud, addr);
	do {
		next = FUNC3(addr, end);
		if (FUNC6(*pmd))
			continue;
		if (FUNC1(*pmd))
			FUNC4(pmd);
		else
			FUNC0(tlb, pmd, addr);
	} while (pmd++, addr = next, addr != end);

	start &= PUD_MASK;
	if (start < floor)
		return;
	if (ceiling) {
		ceiling &= PUD_MASK;
		if (!ceiling)
			return;
	}
	if (end - 1 > ceiling - 1)
		return;

	pmd = FUNC7(pud, start);
	FUNC8(pud);
	FUNC5(tlb, pmd, start);
	FUNC2(tlb->mm);
}