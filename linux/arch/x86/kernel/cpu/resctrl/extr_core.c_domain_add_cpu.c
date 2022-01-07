
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdt_resource {scalar_t__ mon_capable; scalar_t__ alloc_capable; int cache_level; } ;
struct rdt_domain {int id; int list; int cpu_mask; } ;
struct list_head {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct rdt_domain*) ;
 int cpu_to_node (int) ;
 int cpumask_set_cpu (int,int *) ;
 scalar_t__ domain_setup_ctrlval (struct rdt_resource*,struct rdt_domain*) ;
 scalar_t__ domain_setup_mon_state (struct rdt_resource*,struct rdt_domain*) ;
 int get_cache_id (int,int ) ;
 int kfree (struct rdt_domain*) ;
 struct rdt_domain* kzalloc_node (int,int ,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int mkdir_mondata_subdir_allrdtgrp (struct rdt_resource*,struct rdt_domain*) ;
 int pr_warn (char*,int) ;
 struct rdt_domain* rdt_find_domain (struct rdt_resource*,int,struct list_head**) ;
 int rdt_mon_enable_key ;
 scalar_t__ static_branch_unlikely (int *) ;

__attribute__((used)) static void domain_add_cpu(int cpu, struct rdt_resource *r)
{
 int id = get_cache_id(cpu, r->cache_level);
 struct list_head *add_pos = ((void*)0);
 struct rdt_domain *d;

 d = rdt_find_domain(r, id, &add_pos);
 if (IS_ERR(d)) {
  pr_warn("Could't find cache id for cpu %d\n", cpu);
  return;
 }

 if (d) {
  cpumask_set_cpu(cpu, &d->cpu_mask);
  return;
 }

 d = kzalloc_node(sizeof(*d), GFP_KERNEL, cpu_to_node(cpu));
 if (!d)
  return;

 d->id = id;
 cpumask_set_cpu(cpu, &d->cpu_mask);

 if (r->alloc_capable && domain_setup_ctrlval(r, d)) {
  kfree(d);
  return;
 }

 if (r->mon_capable && domain_setup_mon_state(r, d)) {
  kfree(d);
  return;
 }

 list_add_tail(&d->list, add_pos);





 if (static_branch_unlikely(&rdt_mon_enable_key))
  mkdir_mondata_subdir_allrdtgrp(r, d);
}
