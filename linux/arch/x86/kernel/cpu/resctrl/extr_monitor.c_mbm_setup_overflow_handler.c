
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdt_domain {int mbm_work_cpu; int mbm_over; int cpu_mask; } ;


 int cpumask_any (int *) ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int rdt_enable_key ;
 int schedule_delayed_work_on (int,int *,unsigned long) ;
 int static_branch_likely (int *) ;

void mbm_setup_overflow_handler(struct rdt_domain *dom, unsigned long delay_ms)
{
 unsigned long delay = msecs_to_jiffies(delay_ms);
 int cpu;

 if (!static_branch_likely(&rdt_enable_key))
  return;
 cpu = cpumask_any(&dom->cpu_mask);
 dom->mbm_work_cpu = cpu;
 schedule_delayed_work_on(cpu, &dom->mbm_over, delay);
}
