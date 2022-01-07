
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int (* cpu_kick ) (unsigned int,unsigned long) ;} ;


 unsigned long HZ ;
 int arc_default_smp_cpu_kick (unsigned int,unsigned long) ;
 scalar_t__ cpu_online (unsigned int) ;
 scalar_t__ first_lines_of_secondary ;
 unsigned long jiffies ;
 TYPE_1__ plat_smp_ops ;
 int pr_info (char*,unsigned int,...) ;
 struct task_struct* secondary_idle_tsk ;
 int stub1 (unsigned int,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int __cpu_up(unsigned int cpu, struct task_struct *idle)
{
 unsigned long wait_till;

 secondary_idle_tsk = idle;

 pr_info("Idle Task [%d] %p", cpu, idle);
 pr_info("Trying to bring up CPU%u ...\n", cpu);

 if (plat_smp_ops.cpu_kick)
  plat_smp_ops.cpu_kick(cpu,
    (unsigned long)first_lines_of_secondary);
 else
  arc_default_smp_cpu_kick(cpu, (unsigned long)((void*)0));


 wait_till = jiffies + HZ;
 while (time_before(jiffies, wait_till)) {
  if (cpu_online(cpu))
   break;
 }

 if (!cpu_online(cpu)) {
  pr_info("Timeout: CPU%u FAILED to comeup !!!\n", cpu);
  return -1;
 }

 secondary_idle_tsk = ((void*)0);

 return 0;
}
