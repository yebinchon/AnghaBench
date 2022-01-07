
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ amd_uncore_llc ;
 scalar_t__ amd_uncore_nb ;
 int uncore_online (unsigned int,scalar_t__) ;

__attribute__((used)) static int amd_uncore_cpu_online(unsigned int cpu)
{
 if (amd_uncore_nb)
  uncore_online(cpu, amd_uncore_nb);

 if (amd_uncore_llc)
  uncore_online(cpu, amd_uncore_llc);

 return 0;
}
