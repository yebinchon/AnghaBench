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
struct cpufreq_policy {int /*<<< orphan*/  rwsem; } ;

/* Variables and functions */
 int FUNC0 (struct cpufreq_policy*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct cpufreq_policy *policy,
			  unsigned int target_freq,
			  unsigned int relation)
{
	int ret;

	FUNC1(&policy->rwsem);

	ret = FUNC0(policy, target_freq, relation);

	FUNC2(&policy->rwsem);

	return ret;
}