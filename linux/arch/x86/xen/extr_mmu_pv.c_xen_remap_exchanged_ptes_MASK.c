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
struct multicall_space {int /*<<< orphan*/  mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned int UVMF_ALL ; 
 unsigned int UVMF_INVLPG ; 
 unsigned int UVMF_TLB_FLUSH ; 
 struct multicall_space FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(unsigned long vaddr, int order,
				     unsigned long *mfns,
				     unsigned long first_mfn)
{
	unsigned i, limit;
	unsigned long mfn;

	FUNC5();

	limit = 1u << order;
	for (i = 0; i < limit; i++, vaddr += PAGE_SIZE) {
		struct multicall_space mcs;
		unsigned flags;

		mcs = FUNC1(0);
		if (mfns)
			mfn = mfns[i];
		else
			mfn = first_mfn + i;

		if (i < (limit - 1))
			flags = 0;
		else {
			if (order == 0)
				flags = UVMF_INVLPG | UVMF_ALL;
			else
				flags = UVMF_TLB_FLUSH | UVMF_ALL;
		}

		FUNC0(mcs.mc, vaddr,
				FUNC2(mfn, PAGE_KERNEL), flags);

		FUNC3(FUNC4(vaddr), mfn);
	}

	FUNC6(0);
}