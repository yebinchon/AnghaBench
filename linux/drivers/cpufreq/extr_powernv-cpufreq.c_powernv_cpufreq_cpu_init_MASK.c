#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct kernfs_node {int dummy; } ;
struct TYPE_5__ {scalar_t__ expires; } ;
struct global_pstate_info {int /*<<< orphan*/  gpstate_lock; TYPE_1__ timer; struct cpufreq_policy* policy; } ;
struct TYPE_7__ {int /*<<< orphan*/  sd; } ;
struct cpufreq_policy {int fast_switch_possible; struct global_pstate_info* driver_data; int /*<<< orphan*/  freq_table; int /*<<< orphan*/  cpu; TYPE_3__ kobj; int /*<<< orphan*/  cpus; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPSTATE_TIMER_INTERVAL ; 
 int /*<<< orphan*/  PVR_POWER9 ; 
 int TIMER_DEFERRABLE ; 
 int TIMER_PINNED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpstate_timer_handler ; 
 scalar_t__ jiffies ; 
 struct kernfs_node* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_node*) ; 
 struct global_pstate_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  powernv_freqs ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__*,TYPE_2__*) ; 
 int threads_per_core ; 
 TYPE_2__ throttle_attr_grp ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct cpufreq_policy *policy)
{
	int base, i;
	struct kernfs_node *kn;
	struct global_pstate_info *gpstates;

	base = FUNC0(policy->cpu);

	for (i = 0; i < threads_per_core; i++)
		FUNC1(base + i, policy->cpus);

	kn = FUNC2(policy->kobj.sd, throttle_attr_grp.name);
	if (!kn) {
		int ret;

		ret = FUNC9(&policy->kobj, &throttle_attr_grp);
		if (ret) {
			FUNC6("Failed to create throttle stats directory for cpu %d\n",
				policy->cpu);
			return ret;
		}
	} else {
		FUNC3(kn);
	}

	policy->freq_table = powernv_freqs;
	policy->fast_switch_possible = true;

	if (FUNC7(PVR_POWER9))
		return 0;

	/* Initialise Gpstate ramp-down timer only on POWER8 */
	gpstates =  FUNC4(sizeof(*gpstates), GFP_KERNEL);
	if (!gpstates)
		return -ENOMEM;

	policy->driver_data = gpstates;

	/* initialize timer */
	gpstates->policy = policy;
	FUNC10(&gpstates->timer, gpstate_timer_handler,
		    TIMER_PINNED | TIMER_DEFERRABLE);
	gpstates->timer.expires = jiffies +
				FUNC5(GPSTATE_TIMER_INTERVAL);
	FUNC8(&gpstates->gpstate_lock);

	return 0;
}