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
 int /*<<< orphan*/  CPU_STATE_ONLINE ; 
 int /*<<< orphan*/  FW_FEATURE_SPLPAR ; 
 int boot_cpuid ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_spin_mask ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(int cpu)
{
	if (FUNC6())
		FUNC7();
	else if (cpu != boot_cpuid)
		FUNC5();

	if (FUNC1(FW_FEATURE_SPLPAR))
		FUNC4(cpu);

	FUNC0(cpu, of_spin_mask);
#ifdef CONFIG_HOTPLUG_CPU
	set_cpu_current_state(cpu, CPU_STATE_ONLINE);
	set_default_offline_state(cpu);
#endif
}