
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cbm_len; } ;
struct rdt_resource {scalar_t__ cache_level; TYPE_2__ cache; } ;
struct rdt_domain {int cpu_mask; } ;
struct cpu_cacheinfo {int num_leaves; TYPE_1__* info_list; } ;
struct TYPE_3__ {scalar_t__ level; int size; } ;


 int bitmap_weight (unsigned long*,int) ;
 int cpumask_any (int *) ;
 struct cpu_cacheinfo* get_cpu_cacheinfo (int ) ;

unsigned int rdtgroup_cbm_to_size(struct rdt_resource *r,
      struct rdt_domain *d, unsigned long cbm)
{
 struct cpu_cacheinfo *ci;
 unsigned int size = 0;
 int num_b, i;

 num_b = bitmap_weight(&cbm, r->cache.cbm_len);
 ci = get_cpu_cacheinfo(cpumask_any(&d->cpu_mask));
 for (i = 0; i < ci->num_leaves; i++) {
  if (ci->info_list[i].level == r->cache_level) {
   size = ci->info_list[i].size / r->cache.cbm_len * num_b;
   break;
  }
 }

 return size;
}
