#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cpufreq_policy {size_t cpu; int /*<<< orphan*/  cur; } ;
struct cpufreq_freqs {unsigned int new; int /*<<< orphan*/  old; } ;
struct TYPE_3__ {int scaling; int current_pstate; } ;
struct cpudata {TYPE_1__ pstate; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_val ) (struct cpudata*,int) ;} ;

/* Variables and functions */
#define  CPUFREQ_RELATION_H 129 
#define  CPUFREQ_RELATION_L 128 
 int FUNC0 (int,int) ; 
 int FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  INTEL_PSTATE_TRACE_TARGET ; 
 int /*<<< orphan*/  MSR_IA32_PERF_CTL ; 
 struct cpudata** all_cpu_data ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*,struct cpufreq_freqs*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_policy*,struct cpufreq_freqs*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cpudata*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct cpudata*,int) ; 
 TYPE_2__ pstate_funcs ; 
 int /*<<< orphan*/  FUNC6 (struct cpudata*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct cpufreq_policy *policy,
				unsigned int target_freq,
				unsigned int relation)
{
	struct cpudata *cpu = all_cpu_data[policy->cpu];
	struct cpufreq_freqs freqs;
	int target_pstate, old_pstate;

	FUNC7();

	freqs.old = policy->cur;
	freqs.new = target_freq;

	FUNC2(policy, &freqs);
	switch (relation) {
	case CPUFREQ_RELATION_L:
		target_pstate = FUNC1(freqs.new, cpu->pstate.scaling);
		break;
	case CPUFREQ_RELATION_H:
		target_pstate = freqs.new / cpu->pstate.scaling;
		break;
	default:
		target_pstate = FUNC0(freqs.new, cpu->pstate.scaling);
		break;
	}
	target_pstate = FUNC5(cpu, target_pstate);
	old_pstate = cpu->pstate.current_pstate;
	if (target_pstate != cpu->pstate.current_pstate) {
		cpu->pstate.current_pstate = target_pstate;
		FUNC8(policy->cpu, MSR_IA32_PERF_CTL,
			      pstate_funcs.get_val(cpu, target_pstate));
	}
	freqs.new = target_pstate * cpu->pstate.scaling;
	FUNC4(cpu, INTEL_PSTATE_TRACE_TARGET, old_pstate);
	FUNC3(policy, &freqs, false);

	return 0;
}