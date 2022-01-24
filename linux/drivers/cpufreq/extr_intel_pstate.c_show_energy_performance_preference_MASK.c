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
struct cpudata {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct cpudata** all_cpu_data ; 
 char** energy_perf_strings ; 
 int FUNC0 (struct cpudata*) ; 
 int FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(
				struct cpufreq_policy *policy, char *buf)
{
	struct cpudata *cpu_data = all_cpu_data[policy->cpu];
	int preference;

	preference = FUNC0(cpu_data);
	if (preference < 0)
		return preference;

	return  FUNC1(buf, "%s\n", energy_perf_strings[preference]);
}