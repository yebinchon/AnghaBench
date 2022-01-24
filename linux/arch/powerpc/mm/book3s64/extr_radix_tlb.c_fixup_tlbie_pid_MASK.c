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

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_P9_TLBIE_ERAT_BUG ; 
 int /*<<< orphan*/  CPU_FTR_P9_TLBIE_STQ_BUG ; 
 int /*<<< orphan*/  MMU_PAGE_64K ; 
 int /*<<< orphan*/  RIC_FLUSH_TLB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(unsigned long pid)
{
	/*
	 * We can use any address for the invalidation, pick one which is
	 * probably unused as an optimisation.
	 */
	unsigned long va = ((1UL << 52) - 1);

	if (FUNC2(CPU_FTR_P9_TLBIE_ERAT_BUG)) {
		asm volatile("ptesync": : :"memory");
		FUNC0(0, RIC_FLUSH_TLB);
	}

	if (FUNC2(CPU_FTR_P9_TLBIE_STQ_BUG)) {
		asm volatile("ptesync": : :"memory");
		FUNC1(va, pid, FUNC3(MMU_PAGE_64K), RIC_FLUSH_TLB);
	}
}