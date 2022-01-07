
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_pm_enter () ;
 int cpu_pm_exit () ;
 int cpu_suspend (int ,int ) ;
 int mvebu_pm_powerdown ;
 int mvebu_pm_store_bootinfo () ;
 int mvebu_v7_pmsu_idle_exit () ;
 int outer_resume () ;
 int set_cpu_coherent () ;

__attribute__((used)) static int mvebu_enter_suspend(void)
{
 int ret;

 ret = mvebu_pm_store_bootinfo();
 if (ret)
  return ret;

 cpu_pm_enter();

 cpu_suspend(0, mvebu_pm_powerdown);

 outer_resume();

 mvebu_v7_pmsu_idle_exit();

 set_cpu_coherent();

 cpu_pm_exit();
 return 0;
}
