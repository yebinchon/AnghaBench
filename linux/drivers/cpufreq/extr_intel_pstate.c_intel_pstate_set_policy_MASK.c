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
struct TYPE_2__ {int /*<<< orphan*/  max_freq; } ;
struct cpufreq_policy {size_t cpu; scalar_t__ policy; int /*<<< orphan*/  max; TYPE_1__ cpuinfo; } ;
struct cpudata {scalar_t__ policy; } ;

/* Variables and functions */
 scalar_t__ CPUFREQ_POLICY_PERFORMANCE ; 
 int ENODEV ; 
 struct cpudata** all_cpu_data ; 
 scalar_t__ hwp_active ; 
 int /*<<< orphan*/  hwp_boost ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  intel_pstate_limits_lock ; 
 int /*<<< orphan*/  FUNC2 (struct cpudata*) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct cpufreq_policy*,struct cpudata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct cpufreq_policy *policy)
{
	struct cpudata *cpu;

	if (!policy->cpuinfo.max_freq)
		return -ENODEV;

	FUNC7("set_policy cpuinfo.max %u policy->max %u\n",
		 policy->cpuinfo.max_freq, policy->max);

	cpu = all_cpu_data[policy->cpu];
	cpu->policy = policy->policy;

	FUNC5(&intel_pstate_limits_lock);

	FUNC4(policy, cpu);

	if (cpu->policy == CPUFREQ_POLICY_PERFORMANCE) {
		/*
		 * NOHZ_FULL CPUs need this as the governor callback may not
		 * be invoked on them.
		 */
		FUNC0(policy->cpu);
		FUNC2(cpu);
	} else {
		FUNC3(policy->cpu);
	}

	if (hwp_active) {
		/*
		 * When hwp_boost was active before and dynamically it
		 * was turned off, in that case we need to clear the
		 * update util hook.
		 */
		if (!hwp_boost)
			FUNC0(policy->cpu);
		FUNC1(policy->cpu);
	}

	FUNC6(&intel_pstate_limits_lock);

	return 0;
}