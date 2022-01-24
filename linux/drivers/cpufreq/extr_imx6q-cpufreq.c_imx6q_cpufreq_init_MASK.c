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
struct cpufreq_policy {int /*<<< orphan*/  cpus; int /*<<< orphan*/  suspend_freq; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 size_t ARM ; 
 TYPE_1__* clks ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  freq_table ; 
 int /*<<< orphan*/  max_freq ; 
 int /*<<< orphan*/  transition_latency ; 

__attribute__((used)) static int FUNC2(struct cpufreq_policy *policy)
{
	policy->clk = clks[ARM].clk;
	FUNC0(policy, freq_table, transition_latency);
	policy->suspend_freq = max_freq;
	FUNC1(policy->cpus);

	return 0;
}