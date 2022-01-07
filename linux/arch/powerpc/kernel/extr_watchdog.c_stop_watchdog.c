
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;


 int cpumask_clear_cpu (int,int *) ;
 int cpumask_test_cpu (int,int *) ;
 int get_tb () ;
 int hrtimer_cancel (struct hrtimer*) ;
 int smp_processor_id () ;
 struct hrtimer* this_cpu_ptr (int *) ;
 int wd_cpus_enabled ;
 int wd_hrtimer ;
 int wd_smp_clear_cpu_pending (int,int ) ;
 int wd_smp_lock (unsigned long*) ;
 int wd_smp_unlock (unsigned long*) ;

__attribute__((used)) static void stop_watchdog(void *arg)
{
 struct hrtimer *hrtimer = this_cpu_ptr(&wd_hrtimer);
 int cpu = smp_processor_id();
 unsigned long flags;

 if (!cpumask_test_cpu(cpu, &wd_cpus_enabled))
  return;

 hrtimer_cancel(hrtimer);

 wd_smp_lock(&flags);
 cpumask_clear_cpu(cpu, &wd_cpus_enabled);
 wd_smp_unlock(&flags);

 wd_smp_clear_cpu_pending(cpu, get_tb());
}
