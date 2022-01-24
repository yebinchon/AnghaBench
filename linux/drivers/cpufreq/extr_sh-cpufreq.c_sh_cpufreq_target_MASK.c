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
struct cpufreq_target {unsigned int freq; struct cpufreq_policy* policy; } ;
struct cpufreq_policy {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  __sh_cpufreq_target ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cpufreq_target*) ; 

__attribute__((used)) static int FUNC1(struct cpufreq_policy *policy,
			     unsigned int target_freq,
			     unsigned int relation)
{
	struct cpufreq_target data = { .policy = policy, .freq = target_freq };

	return FUNC0(policy->cpu, __sh_cpufreq_target, &data);
}