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
struct TYPE_2__ {int min_freq; int max_freq; int transition_latency; } ;
struct cpufreq_policy {int min; int max; TYPE_1__ cpuinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  pxa300_freqs ; 
 int /*<<< orphan*/  pxa320_freqs ; 
 int FUNC6 (struct cpufreq_policy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct cpufreq_policy *policy)
{
	int ret = -EINVAL;

	/* set default policy and cpuinfo */
	policy->min = policy->cpuinfo.min_freq = 104000;
	policy->max = policy->cpuinfo.max_freq =
		(FUNC3()) ? 806000 : 624000;
	policy->cpuinfo.transition_latency = 1000; /* FIXME: 1 ms, assumed */

	if (FUNC1() || FUNC2())
		ret = FUNC6(policy, pxa300_freqs,
					FUNC0(pxa300_freqs));

	if (FUNC3())
		ret = FUNC6(policy, pxa320_freqs,
					FUNC0(pxa320_freqs));

	if (ret) {
		FUNC4("failed to setup frequency table\n");
		return ret;
	}

	FUNC5("CPUFREQ support for PXA3xx initialized\n");
	return 0;
}