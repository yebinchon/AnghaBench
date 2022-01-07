
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E500_PM_PH20 ;
 int cpu_first_thread_sibling (int) ;
 scalar_t__ cpu_is_offline (int) ;
 int qoriq_disable_thread (int) ;
 int rcpm_v2_cpu_enter_state (int,int ) ;
 int threads_per_core ;

__attribute__((used)) static void rcpm_v2_cpu_die(int cpu)
{
 if (threads_per_core == 1)
  rcpm_v2_cpu_enter_state(cpu, E500_PM_PH20);
}
