
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int pgd; } ;


 int EIO ;
 int boot_secondary (unsigned int,struct task_struct*) ;
 int cpu_running ;
 int * current_pgd ;
 TYPE_1__ init_mm ;
 int msecs_to_jiffies (int) ;
 int pr_crit (char*,unsigned int) ;
 int pr_warn (char*,unsigned int) ;
 int secondary_thread_info ;
 int * smp_cross_call ;
 int synchronise_count_master (unsigned int) ;
 int task_thread_info (struct task_struct*) ;
 int wait_for_completion_timeout (int *,int ) ;

int __cpu_up(unsigned int cpu, struct task_struct *idle)
{
 if (smp_cross_call == ((void*)0)) {
  pr_warn("CPU%u: failed to start, IPI controller missing",
   cpu);
  return -EIO;
 }

 secondary_thread_info = task_thread_info(idle);
 current_pgd[cpu] = init_mm.pgd;

 boot_secondary(cpu, idle);
 if (!wait_for_completion_timeout(&cpu_running,
     msecs_to_jiffies(1000))) {
  pr_crit("CPU%u: failed to start\n", cpu);
  return -EIO;
 }
 synchronise_count_master(cpu);

 return 0;
}
