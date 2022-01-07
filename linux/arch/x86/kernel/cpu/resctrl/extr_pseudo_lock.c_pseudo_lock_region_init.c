
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pseudo_lock_region {int line_size; TYPE_2__* r; int cbm; TYPE_3__* d; int size; int cpu; } ;
struct cpu_cacheinfo {int num_leaves; TYPE_1__* info_list; } ;
struct TYPE_6__ {int cpu_mask; } ;
struct TYPE_5__ {scalar_t__ cache_level; } ;
struct TYPE_4__ {scalar_t__ level; int coherency_line_size; } ;


 int ENODEV ;
 int cpu_online (int ) ;
 int cpumask_first (int *) ;
 struct cpu_cacheinfo* get_cpu_cacheinfo (int ) ;
 int pseudo_lock_region_clear (struct pseudo_lock_region*) ;
 int rdt_last_cmd_printf (char*,int ) ;
 int rdt_last_cmd_puts (char*) ;
 int rdtgroup_cbm_to_size (TYPE_2__*,TYPE_3__*,int ) ;

__attribute__((used)) static int pseudo_lock_region_init(struct pseudo_lock_region *plr)
{
 struct cpu_cacheinfo *ci;
 int ret;
 int i;


 plr->cpu = cpumask_first(&plr->d->cpu_mask);

 if (!cpu_online(plr->cpu)) {
  rdt_last_cmd_printf("CPU %u associated with cache not online\n",
        plr->cpu);
  ret = -ENODEV;
  goto out_region;
 }

 ci = get_cpu_cacheinfo(plr->cpu);

 plr->size = rdtgroup_cbm_to_size(plr->r, plr->d, plr->cbm);

 for (i = 0; i < ci->num_leaves; i++) {
  if (ci->info_list[i].level == plr->r->cache_level) {
   plr->line_size = ci->info_list[i].coherency_line_size;
   return 0;
  }
 }

 ret = -1;
 rdt_last_cmd_puts("Unable to determine cache line size\n");
out_region:
 pseudo_lock_region_clear(plr);
 return ret;
}
