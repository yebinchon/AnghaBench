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
struct cpufreq_policy {int fast_switch_enabled; int /*<<< orphan*/  cpu; int /*<<< orphan*/  fast_switch_possible; int /*<<< orphan*/  rwsem; } ;

/* Variables and functions */
 scalar_t__ cpufreq_fast_switch_count ; 
 int /*<<< orphan*/  cpufreq_fast_switch_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5(struct cpufreq_policy *policy)
{
	FUNC1(&policy->rwsem);

	if (!policy->fast_switch_possible)
		return;

	FUNC2(&cpufreq_fast_switch_lock);
	if (cpufreq_fast_switch_count >= 0) {
		cpufreq_fast_switch_count++;
		policy->fast_switch_enabled = true;
	} else {
		FUNC4("CPU%u: Fast frequency switching not enabled\n",
			policy->cpu);
		FUNC0();
	}
	FUNC3(&cpufreq_fast_switch_lock);
}