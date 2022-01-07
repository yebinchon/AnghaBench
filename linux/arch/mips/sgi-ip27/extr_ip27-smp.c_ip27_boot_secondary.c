
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int launch_proc_t ;


 int LAUNCH_SLAVE (int ,int ,int ,int ,void*,void*) ;
 scalar_t__ MAPPED_KERN_RW_TO_K0 (int ) ;
 unsigned long __KSTK_TOS (struct task_struct*) ;
 int cputonasid (int) ;
 int cputoslice (int) ;
 int smp_bootstrap ;
 scalar_t__ task_thread_info (struct task_struct*) ;

__attribute__((used)) static int ip27_boot_secondary(int cpu, struct task_struct *idle)
{
 unsigned long gp = (unsigned long)task_thread_info(idle);
 unsigned long sp = __KSTK_TOS(idle);

 LAUNCH_SLAVE(cputonasid(cpu), cputoslice(cpu),
  (launch_proc_t)MAPPED_KERN_RW_TO_K0(smp_bootstrap),
  0, (void *) sp, (void *) gp);
 return 0;
}
