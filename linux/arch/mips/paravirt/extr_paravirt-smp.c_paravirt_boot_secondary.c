
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int __KSTK_TOS (struct task_struct*) ;
 unsigned long* paravirt_smp_gp ;
 int * paravirt_smp_sp ;
 int smp_wmb () ;
 scalar_t__ task_thread_info (struct task_struct*) ;

__attribute__((used)) static int paravirt_boot_secondary(int cpu, struct task_struct *idle)
{
 paravirt_smp_gp[cpu] = (unsigned long)task_thread_info(idle);
 smp_wmb();
 paravirt_smp_sp[cpu] = __KSTK_TOS(idle);
 return 0;
}
