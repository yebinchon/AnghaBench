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
struct cpufreq_policy {struct cpufreq_governor* governor; int /*<<< orphan*/  policy; void* max; void* min; int /*<<< orphan*/  cached_target_freq; int /*<<< orphan*/  constraints; int /*<<< orphan*/  cpuinfo; int /*<<< orphan*/  cpu; } ;
struct cpufreq_governor {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int (* verify ) (struct cpufreq_policy*) ;int (* setpolicy ) (struct cpufreq_policy*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FREQ_QOS_MAX ; 
 int /*<<< orphan*/  FREQ_QOS_MIN ; 
 int /*<<< orphan*/  UINT_MAX ; 
 TYPE_1__* cpufreq_driver ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*) ; 
 int FUNC2 (struct cpufreq_policy*) ; 
 int FUNC3 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpufreq_policy*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct cpufreq_policy*,struct cpufreq_governor*) ; 
 int FUNC9 (struct cpufreq_policy*) ; 
 int FUNC10 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC11 (struct cpufreq_policy*) ; 

int FUNC12(struct cpufreq_policy *policy,
		       struct cpufreq_policy *new_policy)
{
	struct cpufreq_governor *old_gov;
	int ret;

	FUNC7("setting new policy for CPU %u: %u - %u kHz\n",
		 new_policy->cpu, new_policy->min, new_policy->max);

	FUNC6(&new_policy->cpuinfo, &policy->cpuinfo, sizeof(policy->cpuinfo));

	/*
	 * PM QoS framework collects all the requests from users and provide us
	 * the final aggregated value here.
	 */
	new_policy->min = FUNC5(&policy->constraints, FREQ_QOS_MIN);
	new_policy->max = FUNC5(&policy->constraints, FREQ_QOS_MAX);

	/* verify the cpu speed can be set within this limit */
	ret = cpufreq_driver->verify(new_policy);
	if (ret)
		return ret;

	policy->min = new_policy->min;
	policy->max = new_policy->max;
	FUNC11(policy);

	policy->cached_target_freq = UINT_MAX;

	FUNC7("new min and max freqs are %u - %u kHz\n",
		 policy->min, policy->max);

	if (cpufreq_driver->setpolicy) {
		policy->policy = new_policy->policy;
		FUNC7("setting range\n");
		return cpufreq_driver->setpolicy(policy);
	}

	if (new_policy->governor == policy->governor) {
		FUNC7("governor limits update\n");
		FUNC1(policy);
		return 0;
	}

	FUNC7("governor switch\n");

	/* save old, working values */
	old_gov = policy->governor;
	/* end old governor */
	if (old_gov) {
		FUNC4(policy);
		FUNC0(policy);
	}

	/* start new governor */
	policy->governor = new_policy->governor;
	ret = FUNC2(policy);
	if (!ret) {
		ret = FUNC3(policy);
		if (!ret) {
			FUNC7("governor change\n");
			FUNC8(policy, old_gov);
			return 0;
		}
		FUNC0(policy);
	}

	/* new governor failed, so re-start old one */
	FUNC7("starting governor %s failed\n", policy->governor->name);
	if (old_gov) {
		policy->governor = old_gov;
		if (FUNC2(policy))
			policy->governor = NULL;
		else
			FUNC3(policy);
	}

	return ret;
}