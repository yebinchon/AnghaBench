
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpu_topology {int package_id; int thread_id; int core_id; } ;


 int MPIDR_AFFINITY_LEVEL (int,int) ;
 int MPIDR_MT_BITMASK ;
 int MPIDR_UP_BITMASK ;
 struct cpu_topology* cpu_topology ;
 int pr_debug (char*,unsigned int,int,int,int,int) ;
 int read_cpuid_mpidr () ;
 int update_siblings_masks (unsigned int) ;

void store_cpu_topology(unsigned int cpuid)
{
 struct cpu_topology *cpuid_topo = &cpu_topology[cpuid];
 u64 mpidr;

 if (cpuid_topo->package_id != -1)
  goto topology_populated;

 mpidr = read_cpuid_mpidr();


 if (mpidr & MPIDR_UP_BITMASK)
  return;


 if (mpidr & MPIDR_MT_BITMASK) {

  cpuid_topo->thread_id = MPIDR_AFFINITY_LEVEL(mpidr, 0);
  cpuid_topo->core_id = MPIDR_AFFINITY_LEVEL(mpidr, 1);
  cpuid_topo->package_id = MPIDR_AFFINITY_LEVEL(mpidr, 2) |
      MPIDR_AFFINITY_LEVEL(mpidr, 3) << 8;
 } else {

  cpuid_topo->thread_id = -1;
  cpuid_topo->core_id = MPIDR_AFFINITY_LEVEL(mpidr, 0);
  cpuid_topo->package_id = MPIDR_AFFINITY_LEVEL(mpidr, 1) |
      MPIDR_AFFINITY_LEVEL(mpidr, 2) << 8 |
      MPIDR_AFFINITY_LEVEL(mpidr, 3) << 16;
 }

 pr_debug("CPU%u: cluster %d core %d thread %d mpidr %#016llx\n",
   cpuid, cpuid_topo->package_id, cpuid_topo->core_id,
   cpuid_topo->thread_id, mpidr);

topology_populated:
 update_siblings_masks(cpuid);
}
