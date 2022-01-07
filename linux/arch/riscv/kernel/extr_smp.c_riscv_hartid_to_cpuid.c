
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_CPUS ;
 int cpuid_to_hartid_map (int) ;
 int pr_err (char*,int) ;

int riscv_hartid_to_cpuid(int hartid)
{
 int i;

 for (i = 0; i < NR_CPUS; i++)
  if (cpuid_to_hartid_map(i) == hartid)
   return i;

 pr_err("Couldn't find cpu id for hartid [%d]\n", hartid);
 return i;
}
