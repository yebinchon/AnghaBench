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
struct cpudata {int update_util_set; } ;

/* Variables and functions */
 struct cpudata** all_cpu_data ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(unsigned int cpu)
{
	struct cpudata *cpu_data = all_cpu_data[cpu];

	if (!cpu_data->update_util_set)
		return;

	FUNC0(cpu);
	cpu_data->update_util_set = false;
	FUNC1();
}