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
struct cpufreq_policy {int /*<<< orphan*/  cpus; } ;

/* Variables and functions */
 int /*<<< orphan*/  _speedstep_set_state ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,unsigned int*,int) ; 

__attribute__((used)) static int FUNC2(struct cpufreq_policy *policy, unsigned int index)
{
	unsigned int policy_cpu;

	policy_cpu = FUNC0(policy->cpus, cpu_online_mask);

	FUNC1(policy_cpu, _speedstep_set_state, &index,
				 true);

	return 0;
}