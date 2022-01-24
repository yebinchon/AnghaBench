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

/* Variables and functions */
 unsigned int NR_CPUS ; 
 scalar_t__ FUNC0 (int) ; 
 int* __cpu_logical_map ; 
 int* __cpu_number_map ; 
 unsigned int FUNC1 () ; 
 int numcpus ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(void)
{
	int id;
	unsigned int cpunum = FUNC1();

	if (FUNC0(cpunum >= NR_CPUS))
		return;

	/* The present CPUs are initially just the boot cpu (CPU 0). */
	for (id = 0; id < NR_CPUS; id++) {
		FUNC2(id, id == 0);
		FUNC3(id, id == 0);
	}
	__cpu_number_map[cpunum] = 0;
	__cpu_logical_map[0] = cpunum;

	for (id = 0; id < numcpus; id++) {
		FUNC2(id, true);
		FUNC3(id, true);
		__cpu_number_map[id] = id;
		__cpu_logical_map[id] = id;
	}
}