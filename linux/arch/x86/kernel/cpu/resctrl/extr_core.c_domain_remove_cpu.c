
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdt_resource {int cache_level; } ;
struct rdt_domain {int mbm_work_cpu; int cqm_work_cpu; int cqm_limbo; int mbm_over; struct rdt_domain* mbm_local; struct rdt_domain* mbm_total; int rmid_busy_llc; struct rdt_domain* mbps_val; struct rdt_domain* ctrl_val; TYPE_1__* plr; int list; int id; int cpu_mask; } ;
struct TYPE_2__ {int * d; } ;


 scalar_t__ IS_ERR_OR_NULL (struct rdt_domain*) ;
 size_t RDT_RESOURCE_L3 ;
 int __check_limbo (struct rdt_domain*,int) ;
 int bitmap_free (int ) ;
 int cancel_delayed_work (int *) ;
 int cpumask_clear_cpu (int,int *) ;
 scalar_t__ cpumask_empty (int *) ;
 int cqm_setup_limbo_handler (struct rdt_domain*,int ) ;
 int get_cache_id (int,int ) ;
 scalar_t__ has_busy_rmid (struct rdt_resource*,struct rdt_domain*) ;
 scalar_t__ is_llc_occupancy_enabled () ;
 scalar_t__ is_mbm_enabled () ;
 int kfree (struct rdt_domain*) ;
 int list_del (int *) ;
 int mbm_setup_overflow_handler (struct rdt_domain*,int ) ;
 int pr_warn (char*,int) ;
 struct rdt_domain* rdt_find_domain (struct rdt_resource*,int,int *) ;
 int rdt_mon_enable_key ;
 struct rdt_resource* rdt_resources_all ;
 int rmdir_mondata_subdir_allrdtgrp (struct rdt_resource*,int ) ;
 scalar_t__ static_branch_unlikely (int *) ;

__attribute__((used)) static void domain_remove_cpu(int cpu, struct rdt_resource *r)
{
 int id = get_cache_id(cpu, r->cache_level);
 struct rdt_domain *d;

 d = rdt_find_domain(r, id, ((void*)0));
 if (IS_ERR_OR_NULL(d)) {
  pr_warn("Could't find cache id for cpu %d\n", cpu);
  return;
 }

 cpumask_clear_cpu(cpu, &d->cpu_mask);
 if (cpumask_empty(&d->cpu_mask)) {




  if (static_branch_unlikely(&rdt_mon_enable_key))
   rmdir_mondata_subdir_allrdtgrp(r, d->id);
  list_del(&d->list);
  if (is_mbm_enabled())
   cancel_delayed_work(&d->mbm_over);
  if (is_llc_occupancy_enabled() && has_busy_rmid(r, d)) {
   __check_limbo(d, 1);
   cancel_delayed_work(&d->cqm_limbo);
  }





  if (d->plr)
   d->plr->d = ((void*)0);

  kfree(d->ctrl_val);
  kfree(d->mbps_val);
  bitmap_free(d->rmid_busy_llc);
  kfree(d->mbm_total);
  kfree(d->mbm_local);
  kfree(d);
  return;
 }

 if (r == &rdt_resources_all[RDT_RESOURCE_L3]) {
  if (is_mbm_enabled() && cpu == d->mbm_work_cpu) {
   cancel_delayed_work(&d->mbm_over);
   mbm_setup_overflow_handler(d, 0);
  }
  if (is_llc_occupancy_enabled() && cpu == d->cqm_work_cpu &&
      has_busy_rmid(r, d)) {
   cancel_delayed_work(&d->cqm_limbo);
   cqm_setup_limbo_handler(d, 0);
  }
 }
}
