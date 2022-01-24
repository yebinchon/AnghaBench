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

/* Variables and functions */
#define  CPUFREQ_POLICY_NOTIFIER 129 
#define  CPUFREQ_TRANSITION_NOTIFIER 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  cpufreq_fast_switch_count ; 
 int /*<<< orphan*/  cpufreq_fast_switch_lock ; 
 int /*<<< orphan*/  cpufreq_policy_notifier_list ; 
 int /*<<< orphan*/  cpufreq_transition_notifier_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct notifier_block*) ; 

int FUNC6(struct notifier_block *nb, unsigned int list)
{
	int ret;

	if (FUNC2())
		return -EINVAL;

	switch (list) {
	case CPUFREQ_TRANSITION_NOTIFIER:
		FUNC3(&cpufreq_fast_switch_lock);

		ret = FUNC5(
				&cpufreq_transition_notifier_list, nb);
		if (!ret && !FUNC0(cpufreq_fast_switch_count >= 0))
			cpufreq_fast_switch_count++;

		FUNC4(&cpufreq_fast_switch_lock);
		break;
	case CPUFREQ_POLICY_NOTIFIER:
		ret = FUNC1(
				&cpufreq_policy_notifier_list, nb);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}