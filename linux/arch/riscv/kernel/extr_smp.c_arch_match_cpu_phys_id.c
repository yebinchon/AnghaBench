
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ cpuid_to_hartid_map (int) ;

bool arch_match_cpu_phys_id(int cpu, u64 phys_id)
{
 return phys_id == cpuid_to_hartid_map(cpu);
}
