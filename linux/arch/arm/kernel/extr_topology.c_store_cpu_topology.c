
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_topology {int core_id; int thread_id; int package_id; } ;


 void* MPIDR_AFFINITY_LEVEL (unsigned int,int) ;
 unsigned int MPIDR_MT_BITMASK ;
 unsigned int MPIDR_SMP_BITMASK ;
 unsigned int MPIDR_SMP_VALUE ;
 struct cpu_topology* cpu_topology ;
 int pr_info (char*,unsigned int,int,int,int,unsigned int) ;
 unsigned int read_cpuid_mpidr () ;
 int update_cpu_capacity (unsigned int) ;
 int update_siblings_masks (unsigned int) ;

void store_cpu_topology(unsigned int cpuid)
{
 struct cpu_topology *cpuid_topo = &cpu_topology[cpuid];
 unsigned int mpidr;


 if (cpuid_topo->core_id != -1)
  return;

 mpidr = read_cpuid_mpidr();


 if ((mpidr & MPIDR_SMP_BITMASK) == MPIDR_SMP_VALUE) {





  if (mpidr & MPIDR_MT_BITMASK) {

   cpuid_topo->thread_id = MPIDR_AFFINITY_LEVEL(mpidr, 0);
   cpuid_topo->core_id = MPIDR_AFFINITY_LEVEL(mpidr, 1);
   cpuid_topo->package_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
  } else {

   cpuid_topo->thread_id = -1;
   cpuid_topo->core_id = MPIDR_AFFINITY_LEVEL(mpidr, 0);
   cpuid_topo->package_id = MPIDR_AFFINITY_LEVEL(mpidr, 1);
  }
 } else {





  cpuid_topo->thread_id = -1;
  cpuid_topo->core_id = 0;
  cpuid_topo->package_id = -1;
 }

 update_siblings_masks(cpuid);

 update_cpu_capacity(cpuid);

 pr_info("CPU%u: thread %d, cpu %d, socket %d, mpidr %x\n",
  cpuid, cpu_topology[cpuid].thread_id,
  cpu_topology[cpuid].core_id,
  cpu_topology[cpuid].package_id, mpidr);
}
