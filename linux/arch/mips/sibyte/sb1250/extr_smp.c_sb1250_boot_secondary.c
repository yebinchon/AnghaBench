
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __KSTK_TOS (struct task_struct*) ;
 int cfe_cpu_start (int ,int *,int ,unsigned long,int ) ;
 int cpu_logical_map (int) ;
 int printk (char*,int,int) ;
 int smp_bootstrap ;
 scalar_t__ task_thread_info (struct task_struct*) ;

__attribute__((used)) static int sb1250_boot_secondary(int cpu, struct task_struct *idle)
{
 int retval;

 retval = cfe_cpu_start(cpu_logical_map(cpu), &smp_bootstrap,
          __KSTK_TOS(idle),
          (unsigned long)task_thread_info(idle), 0);
 if (retval != 0)
  printk("cfe_start_cpu(%i) returned %i\n" , cpu, retval);
 return retval;
}
