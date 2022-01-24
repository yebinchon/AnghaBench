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
struct powernv_smp_call_data {void* gpstate_id; void* pstate_id; } ;
struct global_pstate_info {unsigned int last_sampled_time; unsigned int highest_lpstate_idx; unsigned int last_gpstate_idx; unsigned int elapsed_time; unsigned int last_lpstate_idx; int /*<<< orphan*/  gpstate_lock; int /*<<< orphan*/  timer; } ;
struct cpufreq_policy {int /*<<< orphan*/  cpus; struct global_pstate_info* driver_data; } ;

/* Variables and functions */
 scalar_t__ MAX_RAMP_DOWN_TIME ; 
 unsigned int FUNC0 (scalar_t__,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 () ; 
 void* FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct global_pstate_info*) ; 
 int /*<<< orphan*/  rebooting ; 
 int /*<<< orphan*/  FUNC10 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  set_pstate ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct powernv_smp_call_data*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  throttled ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct cpufreq_policy *policy,
					unsigned int new_index)
{
	struct powernv_smp_call_data freq_data;
	unsigned int cur_msec, gpstate_idx;
	struct global_pstate_info *gpstates = policy->driver_data;

	if (FUNC14(rebooting) && new_index != FUNC3())
		return 0;

	if (!throttled) {
		/* we don't want to be preempted while
		 * checking if the CPU frequency has been throttled
		 */
		FUNC7();
		FUNC6(NULL);
		FUNC8();
	}

	cur_msec = FUNC5(FUNC2());

	freq_data.pstate_id = FUNC4(new_index);
	if (!gpstates) {
		freq_data.gpstate_id = freq_data.pstate_id;
		goto no_gpstate;
	}

	FUNC12(&gpstates->gpstate_lock);

	if (!gpstates->last_sampled_time) {
		gpstate_idx = new_index;
		gpstates->highest_lpstate_idx = new_index;
		goto gpstates_done;
	}

	if (gpstates->last_gpstate_idx < new_index) {
		gpstates->elapsed_time += cur_msec -
						 gpstates->last_sampled_time;

		/*
		 * If its has been ramping down for more than MAX_RAMP_DOWN_TIME
		 * we should be resetting all global pstate related data. Set it
		 * equal to local pstate to start fresh.
		 */
		if (gpstates->elapsed_time > MAX_RAMP_DOWN_TIME) {
			FUNC10(policy);
			gpstates->highest_lpstate_idx = new_index;
			gpstate_idx = new_index;
		} else {
		/* Elaspsed_time is less than 5 seconds, continue to rampdown */
			gpstate_idx = FUNC0(gpstates->elapsed_time,
							 gpstates->highest_lpstate_idx,
							 new_index);
		}
	} else {
		FUNC10(policy);
		gpstates->highest_lpstate_idx = new_index;
		gpstate_idx = new_index;
	}

	/*
	 * If local pstate is equal to global pstate, rampdown is over
	 * So timer is not required to be queued.
	 */
	if (gpstate_idx != new_index)
		FUNC9(gpstates);
	else
		FUNC1(&gpstates->timer);

gpstates_done:
	freq_data.gpstate_id = FUNC4(gpstate_idx);
	gpstates->last_sampled_time = cur_msec;
	gpstates->last_gpstate_idx = gpstate_idx;
	gpstates->last_lpstate_idx = new_index;

	FUNC13(&gpstates->gpstate_lock);

no_gpstate:
	/*
	 * Use smp_call_function to send IPI and execute the
	 * mtspr on target CPU.  We could do that without IPI
	 * if current CPU is within policy->cpus (core)
	 */
	FUNC11(policy->cpus, set_pstate, &freq_data, 1);
	return 0;
}