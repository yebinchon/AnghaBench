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
struct cpufreq_policy {int transition_ongoing; int /*<<< orphan*/  transition_wait; int /*<<< orphan*/ * transition_task; } ;
struct cpufreq_freqs {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*,struct cpufreq_freqs*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct cpufreq_policy *policy,
		struct cpufreq_freqs *freqs, int transition_failed)
{
	if (FUNC0(!policy->transition_ongoing))
		return;

	FUNC1(policy, freqs, transition_failed);

	policy->transition_ongoing = false;
	policy->transition_task = NULL;

	FUNC2(&policy->transition_wait);
}