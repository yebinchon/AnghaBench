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
typedef  int u64 ;
struct cpu_topology {int package_id; int thread_id; int core_id; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int MPIDR_MT_BITMASK ; 
 int MPIDR_UP_BITMASK ; 
 struct cpu_topology* cpu_topology ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int,int,int,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

void FUNC4(unsigned int cpuid)
{
	struct cpu_topology *cpuid_topo = &cpu_topology[cpuid];
	u64 mpidr;

	if (cpuid_topo->package_id != -1)
		goto topology_populated;

	mpidr = FUNC2();

	/* Uniprocessor systems can rely on default topology values */
	if (mpidr & MPIDR_UP_BITMASK)
		return;

	/* Create cpu topology mapping based on MPIDR. */
	if (mpidr & MPIDR_MT_BITMASK) {
		/* Multiprocessor system : Multi-threads per core */
		cpuid_topo->thread_id  = FUNC0(mpidr, 0);
		cpuid_topo->core_id    = FUNC0(mpidr, 1);
		cpuid_topo->package_id = FUNC0(mpidr, 2) |
					 FUNC0(mpidr, 3) << 8;
	} else {
		/* Multiprocessor system : Single-thread per core */
		cpuid_topo->thread_id  = -1;
		cpuid_topo->core_id    = FUNC0(mpidr, 0);
		cpuid_topo->package_id = FUNC0(mpidr, 1) |
					 FUNC0(mpidr, 2) << 8 |
					 FUNC0(mpidr, 3) << 16;
	}

	FUNC1("CPU%u: cluster %d core %d thread %d mpidr %#016llx\n",
		 cpuid, cpuid_topo->package_id, cpuid_topo->core_id,
		 cpuid_topo->thread_id, mpidr);

topology_populated:
	FUNC3(cpuid);
}