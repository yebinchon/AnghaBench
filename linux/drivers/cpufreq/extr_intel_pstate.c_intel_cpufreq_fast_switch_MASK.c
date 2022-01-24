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
struct cpufreq_policy {size_t cpu; } ;
struct TYPE_2__ {int scaling; int current_pstate; } ;
struct cpudata {TYPE_1__ pstate; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  INTEL_PSTATE_TRACE_FAST_SWITCH ; 
 struct cpudata** all_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (struct cpudata*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct cpudata*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cpudata*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static unsigned int FUNC5(struct cpufreq_policy *policy,
					      unsigned int target_freq)
{
	struct cpudata *cpu = all_cpu_data[policy->cpu];
	int target_pstate, old_pstate;

	FUNC4();

	target_pstate = FUNC0(target_freq, cpu->pstate.scaling);
	target_pstate = FUNC2(cpu, target_pstate);
	old_pstate = cpu->pstate.current_pstate;
	FUNC3(cpu, target_pstate);
	FUNC1(cpu, INTEL_PSTATE_TRACE_FAST_SWITCH, old_pstate);
	return target_pstate * cpu->pstate.scaling;
}