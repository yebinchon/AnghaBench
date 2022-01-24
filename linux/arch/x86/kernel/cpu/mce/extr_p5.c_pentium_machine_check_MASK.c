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
typedef  int u32 ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCKDEP_NOW_UNRELIABLE ; 
 int /*<<< orphan*/  MSR_IA32_P5_MC_ADDR ; 
 int /*<<< orphan*/  MSR_IA32_P5_MC_TYPE ; 
 int /*<<< orphan*/  TAINT_MACHINE_CHECK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct pt_regs *regs, long error_code)
{
	u32 loaddr, hi, lotype;

	FUNC1(regs);

	FUNC4(MSR_IA32_P5_MC_ADDR, loaddr, hi);
	FUNC4(MSR_IA32_P5_MC_TYPE, lotype, hi);

	FUNC3("CPU#%d: Machine Check Exception:  0x%8X (type 0x%8X).\n",
		 FUNC5(), loaddr, lotype);

	if (lotype & (1<<5)) {
		FUNC3("CPU#%d: Possible thermal failure (CPU on fire ?).\n",
			 FUNC5());
	}

	FUNC0(TAINT_MACHINE_CHECK, LOCKDEP_NOW_UNRELIABLE);

	FUNC2(regs);
}