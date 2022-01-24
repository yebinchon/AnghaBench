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
 int EBUSY ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  cpufreq_fast_switch_count ; 
 int /*<<< orphan*/  cpufreq_fast_switch_lock ; 
 int /*<<< orphan*/  cpufreq_policy_notifier_list ; 
 int /*<<< orphan*/  cpufreq_transition_notifier_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct notifier_block*) ; 

int FUNC5(struct notifier_block *nb, unsigned int list)
{
	int ret;

	if (FUNC1())
		return -EINVAL;

	switch (list) {
	case CPUFREQ_TRANSITION_NOTIFIER:
		FUNC2(&cpufreq_fast_switch_lock);

		if (cpufreq_fast_switch_count > 0) {
			FUNC3(&cpufreq_fast_switch_lock);
			return -EBUSY;
		}
		ret = FUNC4(
				&cpufreq_transition_notifier_list, nb);
		if (!ret)
			cpufreq_fast_switch_count--;

		FUNC3(&cpufreq_fast_switch_lock);
		break;
	case CPUFREQ_POLICY_NOTIFIER:
		ret = FUNC0(
				&cpufreq_policy_notifier_list, nb);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}