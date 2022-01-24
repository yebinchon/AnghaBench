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
struct cpufreq_policy {int /*<<< orphan*/  freq_table; } ;

/* Variables and functions */
 int FUNC0 (struct cpufreq_policy*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cpufreq_policy*) ; 

int FUNC2(struct cpufreq_policy *policy)
{
	int ret;

	if (!policy->freq_table)
		return 0;

	ret = FUNC0(policy, policy->freq_table);
	if (ret)
		return ret;

	return FUNC1(policy);
}