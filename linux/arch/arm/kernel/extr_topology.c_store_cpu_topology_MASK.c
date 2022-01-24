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
struct cpu_topology {int core_id; int thread_id; int package_id; } ;

/* Variables and functions */
 void* FUNC0 (unsigned int,int) ; 
 unsigned int MPIDR_MT_BITMASK ; 
 unsigned int MPIDR_SMP_BITMASK ; 
 unsigned int MPIDR_SMP_VALUE ; 
 struct cpu_topology* cpu_topology ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int,int,int,unsigned int) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

void FUNC5(unsigned int cpuid)
{
	struct cpu_topology *cpuid_topo = &cpu_topology[cpuid];
	unsigned int mpidr;

	/* If the cpu topology has been already set, just return */
	if (cpuid_topo->core_id != -1)
		return;

	mpidr = FUNC2();

	/* create cpu topology mapping */
	if ((mpidr & MPIDR_SMP_BITMASK) == MPIDR_SMP_VALUE) {
		/*
		 * This is a multiprocessor system
		 * multiprocessor format & multiprocessor mode field are set
		 */

		if (mpidr & MPIDR_MT_BITMASK) {
			/* core performance interdependency */
			cpuid_topo->thread_id = FUNC0(mpidr, 0);
			cpuid_topo->core_id = FUNC0(mpidr, 1);
			cpuid_topo->package_id = FUNC0(mpidr, 2);
		} else {
			/* largely independent cores */
			cpuid_topo->thread_id = -1;
			cpuid_topo->core_id = FUNC0(mpidr, 0);
			cpuid_topo->package_id = FUNC0(mpidr, 1);
		}
	} else {
		/*
		 * This is an uniprocessor system
		 * we are in multiprocessor format but uniprocessor system
		 * or in the old uniprocessor format
		 */
		cpuid_topo->thread_id = -1;
		cpuid_topo->core_id = 0;
		cpuid_topo->package_id = -1;
	}

	FUNC4(cpuid);

	FUNC3(cpuid);

	FUNC1("CPU%u: thread %d, cpu %d, socket %d, mpidr %x\n",
		cpuid, cpu_topology[cpuid].thread_id,
		cpu_topology[cpuid].core_id,
		cpu_topology[cpuid].package_id, mpidr);
}