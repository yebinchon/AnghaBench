
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int cpu_cluster_pm_enter () ;
 int cpu_cluster_pm_exit () ;
 int cpu_pm_enter () ;
 int cpu_pm_exit () ;
 int cpu_suspend (int ,int ) ;
 int highbank_suspend_finish ;

__attribute__((used)) static int highbank_pm_enter(suspend_state_t state)
{
 cpu_pm_enter();
 cpu_cluster_pm_enter();

 cpu_suspend(0, highbank_suspend_finish);

 cpu_cluster_pm_exit();
 cpu_pm_exit();

 return 0;
}
