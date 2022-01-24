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
struct mmu_gather {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  hugepd_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PPC_8xx ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PTE_INDEX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_gather*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_gather*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mmu_gather *tlb, hugepd_t *hpdp, int pdshift,
			      unsigned long start, unsigned long end,
			      unsigned long floor, unsigned long ceiling)
{
	pte_t *hugepte = FUNC4(*hpdp);
	int i;

	unsigned long pdmask = ~((1UL << pdshift) - 1);
	unsigned int num_hugepd = 1;
	unsigned int shift = FUNC5(*hpdp);

	/* Note: On fsl the hpdp may be the first of several */
	if (shift > pdshift)
		num_hugepd = 1 << (shift - pdshift);

	start &= pdmask;
	if (start < floor)
		return;
	if (ceiling) {
		ceiling &= pdmask;
		if (! ceiling)
			return;
	}
	if (end - 1 > ceiling - 1)
		return;

	for (i = 0; i < num_hugepd; i++, hpdp++)
		*hpdp = FUNC1(0);

	if (shift >= pdshift)
		FUNC3(tlb, hugepte);
	else if (FUNC0(CONFIG_PPC_8xx))
		FUNC6(tlb, hugepte,
				 FUNC2(PTE_INDEX_SIZE));
	else
		FUNC6(tlb, hugepte,
				 FUNC2(pdshift - shift));
}