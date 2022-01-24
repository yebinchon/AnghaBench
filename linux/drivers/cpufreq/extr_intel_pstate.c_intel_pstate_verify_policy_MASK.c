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
struct TYPE_2__ {int /*<<< orphan*/  min_freq; } ;
struct cpufreq_policy {size_t cpu; scalar_t__ policy; TYPE_1__ cpuinfo; } ;
struct cpudata {int dummy; } ;

/* Variables and functions */
 scalar_t__ CPUFREQ_POLICY_PERFORMANCE ; 
 scalar_t__ CPUFREQ_POLICY_POWERSAVE ; 
 int EINVAL ; 
 struct cpudata** all_cpu_data ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*,struct cpudata*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpudata*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct cpufreq_policy *policy)
{
	struct cpudata *cpu = all_cpu_data[policy->cpu];

	FUNC3();
	FUNC0(policy, policy->cpuinfo.min_freq,
				     FUNC2(cpu));

	if (policy->policy != CPUFREQ_POLICY_POWERSAVE &&
	    policy->policy != CPUFREQ_POLICY_PERFORMANCE)
		return -EINVAL;

	FUNC1(policy, cpu);

	return 0;
}