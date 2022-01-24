#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct freq_qos_request {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  min_freq; int /*<<< orphan*/  transition_latency; } ;
struct cpufreq_policy {size_t cpu; struct freq_qos_request* driver_data; int /*<<< orphan*/  constraints; TYPE_1__ cpuinfo; int /*<<< orphan*/  cur; int /*<<< orphan*/  transition_delay_us; } ;
struct TYPE_5__ {int turbo_pstate; int scaling; } ;
struct cpudata {TYPE_2__ pstate; } ;
struct TYPE_6__ {int min_perf_pct; int max_perf_pct; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FREQ_QOS_MAX ; 
 int /*<<< orphan*/  FREQ_QOS_MIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INTEL_CPUFREQ_TRANSITION_DELAY ; 
 int /*<<< orphan*/  INTEL_CPUFREQ_TRANSITION_LATENCY ; 
 int FUNC1 (struct cpufreq_policy*) ; 
 struct cpudata** all_cpu_data ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct freq_qos_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct freq_qos_request*) ; 
 struct device* FUNC5 (size_t) ; 
 TYPE_3__ global ; 
 scalar_t__ hwp_active ; 
 int /*<<< orphan*/  FUNC6 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int*,int*) ; 
 struct freq_qos_request* FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct freq_qos_request*) ; 

__attribute__((used)) static int FUNC10(struct cpufreq_policy *policy)
{
	int max_state, turbo_max, min_freq, max_freq, ret;
	struct freq_qos_request *req;
	struct cpudata *cpu;
	struct device *dev;

	dev = FUNC5(policy->cpu);
	if (!dev)
		return -ENODEV;

	ret = FUNC1(policy);
	if (ret)
		return ret;

	policy->cpuinfo.transition_latency = INTEL_CPUFREQ_TRANSITION_LATENCY;
	policy->transition_delay_us = INTEL_CPUFREQ_TRANSITION_DELAY;
	/* This reflects the intel_pstate_get_cpu_pstates() setting. */
	policy->cur = policy->cpuinfo.min_freq;

	req = FUNC8(2, sizeof(*req), GFP_KERNEL);
	if (!req) {
		ret = -ENOMEM;
		goto pstate_exit;
	}

	cpu = all_cpu_data[policy->cpu];

	if (hwp_active)
		FUNC7(policy->cpu, &turbo_max, &max_state);
	else
		turbo_max = cpu->pstate.turbo_pstate;

	min_freq = FUNC0(turbo_max * global.min_perf_pct, 100);
	min_freq *= cpu->pstate.scaling;
	max_freq = FUNC0(turbo_max * global.max_perf_pct, 100);
	max_freq *= cpu->pstate.scaling;

	ret = FUNC3(&policy->constraints, req, FREQ_QOS_MIN,
				   min_freq);
	if (ret < 0) {
		FUNC2(dev, "Failed to add min-freq constraint (%d)\n", ret);
		goto free_req;
	}

	ret = FUNC3(&policy->constraints, req + 1, FREQ_QOS_MAX,
				   max_freq);
	if (ret < 0) {
		FUNC2(dev, "Failed to add max-freq constraint (%d)\n", ret);
		goto remove_min_req;
	}

	policy->driver_data = req;

	return 0;

remove_min_req:
	FUNC4(req);
free_req:
	FUNC9(req);
pstate_exit:
	FUNC6(policy);

	return ret;
}