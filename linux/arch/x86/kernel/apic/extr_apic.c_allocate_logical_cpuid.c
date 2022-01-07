
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int WARN_ONCE (int,char*,int,int,int) ;
 int* cpuid_to_apicid ;
 int nr_cpu_ids ;
 int nr_logical_cpuids ;

__attribute__((used)) static int allocate_logical_cpuid(int apicid)
{
 int i;





 for (i = 0; i < nr_logical_cpuids; i++) {
  if (cpuid_to_apicid[i] == apicid)
   return i;
 }


 if (nr_logical_cpuids >= nr_cpu_ids) {
  WARN_ONCE(1, "APIC: NR_CPUS/possible_cpus limit of %u reached. "
        "Processor %d/0x%x and the rest are ignored.\n",
        nr_cpu_ids, nr_logical_cpuids, apicid);
  return -EINVAL;
 }

 cpuid_to_apicid[nr_logical_cpuids] = apicid;
 return nr_logical_cpuids++;
}
