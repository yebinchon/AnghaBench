
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;


 int HRTIMER_NORESTART ;
 int HRTIMER_RESTART ;
 int NMI_WATCHDOG_ENABLED ;
 int cpumask_test_cpu (int,int *) ;
 int hrtimer_forward_now (struct hrtimer*,int ) ;
 int ms_to_ktime (int ) ;
 int smp_processor_id () ;
 int watchdog_cpumask ;
 int watchdog_enabled ;
 int watchdog_timer_interrupt (int) ;
 int wd_timer_period_ms ;

__attribute__((used)) static enum hrtimer_restart watchdog_timer_fn(struct hrtimer *hrtimer)
{
 int cpu = smp_processor_id();

 if (!(watchdog_enabled & NMI_WATCHDOG_ENABLED))
  return HRTIMER_NORESTART;

 if (!cpumask_test_cpu(cpu, &watchdog_cpumask))
  return HRTIMER_NORESTART;

 watchdog_timer_interrupt(cpu);

 hrtimer_forward_now(hrtimer, ms_to_ktime(wd_timer_period_ms));

 return HRTIMER_RESTART;
}
