
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdt_domain {int cqm_work_cpu; int cqm_limbo; int cpu_mask; } ;


 int cpumask_any (int *) ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int schedule_delayed_work_on (int,int *,unsigned long) ;

void cqm_setup_limbo_handler(struct rdt_domain *dom, unsigned long delay_ms)
{
 unsigned long delay = msecs_to_jiffies(delay_ms);
 int cpu;

 cpu = cpumask_any(&dom->cpu_mask);
 dom->cqm_work_cpu = cpu;

 schedule_delayed_work_on(cpu, &dom->cqm_limbo, delay);
}
