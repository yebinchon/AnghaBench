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
typedef  int /*<<< orphan*/  u32 ;
struct cpuinfo_x86 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_P5_MC_ADDR ; 
 int /*<<< orphan*/  MSR_IA32_P5_MC_TYPE ; 
 int /*<<< orphan*/  X86_CR4_MCE ; 
 int /*<<< orphan*/  X86_FEATURE_MCE ; 
 int /*<<< orphan*/  FUNC0 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  machine_check_vector ; 
 int /*<<< orphan*/  mce_p5_enabled ; 
 int /*<<< orphan*/  pentium_machine_check ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct cpuinfo_x86 *c)
{
	u32 l, h;

	/* Default P5 to off as its often misconnected: */
	if (!mce_p5_enabled)
		return;

	/* Check for MCE support: */
	if (!FUNC0(c, X86_FEATURE_MCE))
		return;

	machine_check_vector = pentium_machine_check;
	/* Make sure the vector pointer is visible before we enable MCEs: */
	FUNC5();

	/* Read registers before enabling: */
	FUNC3(MSR_IA32_P5_MC_ADDR, l, h);
	FUNC3(MSR_IA32_P5_MC_TYPE, l, h);
	FUNC2("Intel old style machine check architecture supported.\n");

	/* Enable MCE: */
	FUNC1(X86_CR4_MCE);
	FUNC2("Intel old style machine check reporting enabled on CPU#%d.\n",
		FUNC4());
}