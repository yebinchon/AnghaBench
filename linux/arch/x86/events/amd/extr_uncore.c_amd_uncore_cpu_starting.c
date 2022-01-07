
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_uncore {unsigned int id; } ;


 struct amd_uncore* amd_uncore_find_online_sibling (struct amd_uncore*,scalar_t__) ;
 scalar_t__ amd_uncore_llc ;
 scalar_t__ amd_uncore_nb ;
 int cpu_llc_id ;
 int cpuid (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 unsigned int per_cpu (int ,unsigned int) ;
 struct amd_uncore** per_cpu_ptr (scalar_t__,unsigned int) ;

__attribute__((used)) static int amd_uncore_cpu_starting(unsigned int cpu)
{
 unsigned int eax, ebx, ecx, edx;
 struct amd_uncore *uncore;

 if (amd_uncore_nb) {
  uncore = *per_cpu_ptr(amd_uncore_nb, cpu);
  cpuid(0x8000001e, &eax, &ebx, &ecx, &edx);
  uncore->id = ecx & 0xff;

  uncore = amd_uncore_find_online_sibling(uncore, amd_uncore_nb);
  *per_cpu_ptr(amd_uncore_nb, cpu) = uncore;
 }

 if (amd_uncore_llc) {
  uncore = *per_cpu_ptr(amd_uncore_llc, cpu);
  uncore->id = per_cpu(cpu_llc_id, cpu);

  uncore = amd_uncore_find_online_sibling(uncore, amd_uncore_llc);
  *per_cpu_ptr(amd_uncore_llc, cpu) = uncore;
 }

 return 0;
}
