
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct rdt_resource {int dummy; } ;
struct rdt_domain {int cqm_limbo; } ;


 int CQM_LIMBOCHECK_INTERVAL ;
 size_t RDT_RESOURCE_L3 ;
 int __check_limbo (struct rdt_domain*,int) ;
 struct rdt_domain* get_domain_from_cpu (int,struct rdt_resource*) ;
 scalar_t__ has_busy_rmid (struct rdt_resource*,struct rdt_domain*) ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn_once (char*) ;
 struct rdt_resource* rdt_resources_all ;
 int rdtgroup_mutex ;
 int schedule_delayed_work_on (int,int *,unsigned long) ;
 int smp_processor_id () ;

void cqm_handle_limbo(struct work_struct *work)
{
 unsigned long delay = msecs_to_jiffies(CQM_LIMBOCHECK_INTERVAL);
 int cpu = smp_processor_id();
 struct rdt_resource *r;
 struct rdt_domain *d;

 mutex_lock(&rdtgroup_mutex);

 r = &rdt_resources_all[RDT_RESOURCE_L3];
 d = get_domain_from_cpu(cpu, r);

 if (!d) {
  pr_warn_once("Failure to get domain for limbo worker\n");
  goto out_unlock;
 }

 __check_limbo(d, 0);

 if (has_busy_rmid(r, d))
  schedule_delayed_work_on(cpu, &d->cqm_limbo, delay);

out_unlock:
 mutex_unlock(&rdtgroup_mutex);
}
