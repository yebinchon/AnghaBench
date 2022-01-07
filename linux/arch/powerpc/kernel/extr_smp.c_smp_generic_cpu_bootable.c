
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_SMT ;
 scalar_t__ SYSTEM_RUNNING ;
 scalar_t__ cpu_has_feature (int ) ;
 scalar_t__ cpu_thread_in_core (unsigned int) ;
 scalar_t__ smt_enabled_at_boot ;
 scalar_t__ system_state ;

int smp_generic_cpu_bootable(unsigned int nr)
{



 if (system_state < SYSTEM_RUNNING && cpu_has_feature(CPU_FTR_SMT)) {
  if (!smt_enabled_at_boot && cpu_thread_in_core(nr) != 0)
   return 0;
  if (smt_enabled_at_boot
      && cpu_thread_in_core(nr) >= smt_enabled_at_boot)
   return 0;
 }

 return 1;
}
