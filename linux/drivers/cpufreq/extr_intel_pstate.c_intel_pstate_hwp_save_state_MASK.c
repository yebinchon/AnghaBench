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
struct cpufreq_policy {size_t cpu; } ;
struct cpudata {int /*<<< orphan*/  epp_saved; } ;

/* Variables and functions */
 struct cpudata** all_cpu_data ; 
 int /*<<< orphan*/  hwp_active ; 
 int /*<<< orphan*/  FUNC0 (struct cpudata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct cpufreq_policy *policy)
{
	struct cpudata *cpu_data = all_cpu_data[policy->cpu];

	if (!hwp_active)
		return 0;

	cpu_data->epp_saved = FUNC0(cpu_data, 0);

	return 0;
}