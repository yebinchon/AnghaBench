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
struct TYPE_4__ {int /*<<< orphan*/  max_freq; } ;
struct cpufreq_policy {TYPE_1__ cpuinfo; } ;
struct TYPE_5__ {int /*<<< orphan*/  turbo_freq; int /*<<< orphan*/  max_freq; } ;
struct cpudata {TYPE_2__ pstate; } ;
struct TYPE_6__ {scalar_t__ turbo_disabled_mf; } ;

/* Variables and functions */
 struct cpudata** all_cpu_data ; 
 struct cpufreq_policy* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*) ; 
 TYPE_3__ global ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*) ; 

__attribute__((used)) static void FUNC3(unsigned int cpu)
{
	struct cpufreq_policy *policy = FUNC0(cpu);
	struct cpudata *cpudata;

	if (!policy)
		return;

	cpudata = all_cpu_data[cpu];
	policy->cpuinfo.max_freq = global.turbo_disabled_mf ?
			cpudata->pstate.max_freq : cpudata->pstate.turbo_freq;

	FUNC2(policy);

	FUNC1(policy);
}