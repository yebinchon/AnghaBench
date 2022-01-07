
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpuhp_smt_control { ____Placeholder_cpuhp_smt_control } cpuhp_smt_control ;


 scalar_t__ CPU_SMT_DISABLED ;
 scalar_t__ CPU_SMT_FORCE_DISABLED ;
 int cpu_hotplug_disable () ;
 int cpu_hotplug_enable () ;
 scalar_t__ cpu_smt_control ;
 int cpuhp_smt_disable (int) ;
 int cpuhp_smt_enable () ;

int arch_resume_nosmt(void)
{
 int ret = 0;
 cpu_hotplug_enable();
 if (cpu_smt_control == CPU_SMT_DISABLED ||
   cpu_smt_control == CPU_SMT_FORCE_DISABLED) {
  enum cpuhp_smt_control old = cpu_smt_control;

  ret = cpuhp_smt_enable();
  if (ret)
   goto out;
  ret = cpuhp_smt_disable(old);
  if (ret)
   goto out;
 }
out:
 cpu_hotplug_disable();
 return ret;
}
