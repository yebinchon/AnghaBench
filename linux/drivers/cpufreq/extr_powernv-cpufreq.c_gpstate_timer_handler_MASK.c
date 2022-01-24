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
struct timer_list {int dummy; } ;
struct powernv_smp_call_data {scalar_t__ gpstate_id; scalar_t__ pstate_id; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct global_pstate_info {unsigned int last_sampled_time; scalar_t__ elapsed_time; int highest_lpstate_idx; int last_gpstate_idx; int last_lpstate_idx; int /*<<< orphan*/  gpstate_lock; TYPE_1__ timer; struct cpufreq_policy* policy; } ;
struct cpufreq_policy {int /*<<< orphan*/  cpus; } ;

/* Variables and functions */
 scalar_t__ MAX_RAMP_DOWN_TIME ; 
 int /*<<< orphan*/  SPRN_PMCR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 struct global_pstate_info* FUNC6 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 struct global_pstate_info* gpstates ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ jiffies ; 
 unsigned int FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct global_pstate_info*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC15 (struct powernv_smp_call_data*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 

void FUNC18(struct timer_list *t)
{
	struct global_pstate_info *gpstates = FUNC6(gpstates, t, timer);
	struct cpufreq_policy *policy = gpstates->policy;
	int gpstate_idx, lpstate_idx;
	unsigned long val;
	unsigned int time_diff = FUNC9(jiffies)
					- gpstates->last_sampled_time;
	struct powernv_smp_call_data freq_data;

	if (!FUNC16(&gpstates->gpstate_lock))
		return;
	/*
	 * If the timer has migrated to the different cpu then bring
	 * it back to one of the policy->cpus
	 */
	if (!FUNC3(FUNC13(), policy->cpus)) {
		gpstates->timer.expires = jiffies + FUNC10(1);
		FUNC0(&gpstates->timer, FUNC2(policy->cpus));
		FUNC17(&gpstates->gpstate_lock);
		return;
	}

	/*
	 * If PMCR was last updated was using fast_swtich then
	 * We may have wrong in gpstate->last_lpstate_idx
	 * value. Hence, read from PMCR to get correct data.
	 */
	val = FUNC7(SPRN_PMCR);
	freq_data.gpstate_id = FUNC4(val);
	freq_data.pstate_id = FUNC5(val);
	if (freq_data.gpstate_id  == freq_data.pstate_id) {
		FUNC14(policy);
		FUNC17(&gpstates->gpstate_lock);
		return;
	}

	gpstates->last_sampled_time += time_diff;
	gpstates->elapsed_time += time_diff;

	if (gpstates->elapsed_time > MAX_RAMP_DOWN_TIME) {
		gpstate_idx = FUNC11(freq_data.pstate_id);
		lpstate_idx = gpstate_idx;
		FUNC14(policy);
		gpstates->highest_lpstate_idx = gpstate_idx;
	} else {
		lpstate_idx = FUNC11(freq_data.pstate_id);
		gpstate_idx = FUNC1(gpstates->elapsed_time,
						 gpstates->highest_lpstate_idx,
						 lpstate_idx);
	}
	freq_data.gpstate_id = FUNC8(gpstate_idx);
	gpstates->last_gpstate_idx = gpstate_idx;
	gpstates->last_lpstate_idx = lpstate_idx;
	/*
	 * If local pstate is equal to global pstate, rampdown is over
	 * So timer is not required to be queued.
	 */
	if (gpstate_idx != gpstates->last_lpstate_idx)
		FUNC12(gpstates);

	FUNC15(&freq_data);
	FUNC17(&gpstates->gpstate_lock);
}