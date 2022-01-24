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
struct cpufreq_policy {int dummy; } ;
struct cpufreq_frequency_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMIPS_CPUFREQ_NAME ; 
 scalar_t__ FUNC0 (struct cpufreq_frequency_table*) ; 
 int FUNC1 (struct cpufreq_frequency_table*) ; 
 int /*<<< orphan*/  TRANSITION_LATENCY ; 
 struct cpufreq_frequency_table* FUNC2 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_policy*,struct cpufreq_frequency_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct cpufreq_policy *policy)
{
	struct cpufreq_frequency_table *freq_table;

	freq_table = FUNC2(policy);
	if (FUNC0(freq_table)) {
		FUNC4("%s: couldn't determine frequency table (%ld).\n",
			BMIPS_CPUFREQ_NAME, FUNC1(freq_table));
		return FUNC1(freq_table);
	}

	FUNC3(policy, freq_table, TRANSITION_LATENCY);
	FUNC5("%s: registered\n", BMIPS_CPUFREQ_NAME);

	return 0;
}