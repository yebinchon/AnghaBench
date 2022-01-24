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
struct cpufreq_policy {scalar_t__ transition_task; int transition_ongoing; int /*<<< orphan*/  transition_lock; int /*<<< orphan*/  transition_wait; } ;
struct cpufreq_freqs {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CPUFREQ_ASYNC_NOTIFICATION ; 
 int /*<<< orphan*/  CPUFREQ_PRECHANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* cpufreq_driver ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*,struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct cpufreq_policy *policy,
		struct cpufreq_freqs *freqs)
{

	/*
	 * Catch double invocations of _begin() which lead to self-deadlock.
	 * ASYNC_NOTIFICATION drivers are left out because the cpufreq core
	 * doesn't invoke _begin() on their behalf, and hence the chances of
	 * double invocations are very low. Moreover, there are scenarios
	 * where these checks can emit false-positive warnings in these
	 * drivers; so we avoid that by skipping them altogether.
	 */
	FUNC0(!(cpufreq_driver->flags & CPUFREQ_ASYNC_NOTIFICATION)
				&& current == policy->transition_task);

wait:
	FUNC5(policy->transition_wait, !policy->transition_ongoing);

	FUNC2(&policy->transition_lock);

	if (FUNC4(policy->transition_ongoing)) {
		FUNC3(&policy->transition_lock);
		goto wait;
	}

	policy->transition_ongoing = true;
	policy->transition_task = current;

	FUNC3(&policy->transition_lock);

	FUNC1(policy, freqs, CPUFREQ_PRECHANGE);
}