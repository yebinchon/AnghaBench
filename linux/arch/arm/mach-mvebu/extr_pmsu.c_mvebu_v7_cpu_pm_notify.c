
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 unsigned long CPU_PM_ENTER ;
 unsigned long CPU_PM_EXIT ;
 int NOTIFY_OK ;
 unsigned int cpu_logical_map (int ) ;
 int mvebu_cpu_resume ;
 int mvebu_pmsu_set_cpu_boot_addr (unsigned int,int ) ;
 int mvebu_v7_pmsu_idle_exit () ;
 int smp_processor_id () ;

__attribute__((used)) static int mvebu_v7_cpu_pm_notify(struct notifier_block *self,
        unsigned long action, void *hcpu)
{
 if (action == CPU_PM_ENTER) {
  unsigned int hw_cpu = cpu_logical_map(smp_processor_id());
  mvebu_pmsu_set_cpu_boot_addr(hw_cpu, mvebu_cpu_resume);
 } else if (action == CPU_PM_EXIT) {
  mvebu_v7_pmsu_idle_exit();
 }

 return NOTIFY_OK;
}
