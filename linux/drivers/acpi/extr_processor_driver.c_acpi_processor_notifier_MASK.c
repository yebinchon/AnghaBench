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
struct notifier_block {int dummy; } ;
struct cpufreq_policy {int dummy; } ;

/* Variables and functions */
 unsigned long CPUFREQ_CREATE_POLICY ; 
 unsigned long CPUFREQ_REMOVE_POLICY ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_policy*) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *nb,
				   unsigned long event, void *data)
{
	struct cpufreq_policy *policy = data;

	if (event == CPUFREQ_CREATE_POLICY) {
		FUNC3(policy);
		FUNC1(policy);
	} else if (event == CPUFREQ_REMOVE_POLICY) {
		FUNC0(policy);
		FUNC2(policy);
	}

	return 0;
}