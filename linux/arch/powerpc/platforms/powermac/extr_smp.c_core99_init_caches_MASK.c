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
 int /*<<< orphan*/  CPU_FTR_L2CR ; 
 int /*<<< orphan*/  CPU_FTR_L3CR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core99_l2_cache ; 
 int /*<<< orphan*/  core99_l3_cache ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 

__attribute__((used)) static void FUNC6(int cpu)
{
#ifndef CONFIG_PPC64
	if (!FUNC4(CPU_FTR_L2CR))
		return;

	if (cpu == 0) {
		core99_l2_cache = FUNC0();
		FUNC5("CPU0: L2CR is %lx\n", core99_l2_cache);
	} else {
		FUNC5("CPU%d: L2CR was %lx\n", cpu, FUNC0());
		FUNC2(0);
		FUNC2(core99_l2_cache);
		FUNC5("CPU%d: L2CR set to %lx\n", cpu, core99_l2_cache);
	}

	if (!FUNC4(CPU_FTR_L3CR))
		return;

	if (cpu == 0){
		core99_l3_cache = FUNC1();
		FUNC5("CPU0: L3CR is %lx\n", core99_l3_cache);
	} else {
		FUNC5("CPU%d: L3CR was %lx\n", cpu, FUNC1());
		FUNC3(0);
		FUNC3(core99_l3_cache);
		FUNC5("CPU%d: L3CR set to %lx\n", cpu, core99_l3_cache);
	}
#endif /* !CONFIG_PPC64 */
}