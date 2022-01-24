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
struct cpuinfo_arc_mmu {int ways; int sets; } ;
struct TYPE_2__ {struct cpuinfo_arc_mmu mmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_REG_TLBCOMMAND ; 
 int /*<<< orphan*/  ARC_REG_TLBINDEX ; 
 int /*<<< orphan*/  ARC_REG_TLBPD0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct cpuinfo_arc_mmu*,int,int) ; 
 int /*<<< orphan*/  TLBRead ; 
 unsigned int _PAGE_PRESENT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* cpuinfo_arc700 ; 
 int /*<<< orphan*/  dup_pd_silent ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,int,int,int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(unsigned long cause, unsigned long address,
			  struct pt_regs *regs)
{
	struct cpuinfo_arc_mmu *mmu = &cpuinfo_arc700[FUNC8()].mmu;
	unsigned long flags;
	int set, n_ways = mmu->ways;

	n_ways = FUNC5(n_ways, 4);
	FUNC0(mmu->ways > 4);

	FUNC4(flags);

	/* loop thru all sets of TLB */
	for (set = 0; set < mmu->sets; set++) {

		int is_valid, way;
		unsigned int pd0[4];

		/* read out all the ways of current set */
		for (way = 0, is_valid = 0; way < n_ways; way++) {
			FUNC9(ARC_REG_TLBINDEX,
					  FUNC1(mmu, set, way));
			FUNC9(ARC_REG_TLBCOMMAND, TLBRead);
			pd0[way] = FUNC7(ARC_REG_TLBPD0);
			is_valid |= pd0[way] & _PAGE_PRESENT;
			pd0[way] &= PAGE_MASK;
		}

		/* If all the WAYS in SET are empty, skip to next SET */
		if (!is_valid)
			continue;

		/* Scan the set for duplicate ways: needs a nested loop */
		for (way = 0; way < n_ways - 1; way++) {

			int n;

			if (!pd0[way])
				continue;

			for (n = way + 1; n < n_ways; n++) {
				if (pd0[way] != pd0[n])
					continue;

				if (!dup_pd_silent)
					FUNC6("Dup TLB PD0 %08x @ set %d ways %d,%d\n",
						pd0[way], set, way, n);

				/*
				 * clear entry @way and not @n.
				 * This is critical to our optimised loop
				 */
				pd0[way] = 0;
				FUNC9(ARC_REG_TLBINDEX,
						FUNC1(mmu, set, way));
				FUNC2();
			}
		}
	}

	FUNC3(flags);
}