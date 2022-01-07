
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PMSU_PREPARE_DEEP_IDLE ;
 int SCU_PM_POWEROFF ;
 int cpu_do_idle () ;
 int louis ;
 int mvebu_get_scu_base () ;
 int mvebu_v7_pmsu_idle_prepare (unsigned long) ;
 int scu_power_mode (int ,int ) ;
 int v7_exit_coherency_flush (int ) ;

int armada_38x_do_cpu_suspend(unsigned long deepidle)
{
 unsigned long flags = 0;

 if (deepidle)
  flags |= PMSU_PREPARE_DEEP_IDLE;

 mvebu_v7_pmsu_idle_prepare(flags);




 v7_exit_coherency_flush(louis);

 scu_power_mode(mvebu_get_scu_base(), SCU_PM_POWEROFF);

 cpu_do_idle();

 return 1;
}
