
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdt_resource {unsigned int mon_scale; unsigned int num_rmid; int mon_capable; int mon_enabled; } ;
struct TYPE_2__ {unsigned int x86_cache_size; unsigned int x86_cache_occ_scale; unsigned int x86_cache_max_rmid; } ;


 TYPE_1__ boot_cpu_data ;
 int dom_data_init (struct rdt_resource*) ;
 int l3_mon_evt_init (struct rdt_resource*) ;
 unsigned int resctrl_cqm_threshold ;

int rdt_get_mon_l3_config(struct rdt_resource *r)
{
 unsigned int cl_size = boot_cpu_data.x86_cache_size;
 int ret;

 r->mon_scale = boot_cpu_data.x86_cache_occ_scale;
 r->num_rmid = boot_cpu_data.x86_cache_max_rmid + 1;
 resctrl_cqm_threshold = cl_size * 1024 / r->num_rmid;


 resctrl_cqm_threshold /= r->mon_scale;

 ret = dom_data_init(r);
 if (ret)
  return ret;

 l3_mon_evt_init(r);

 r->mon_capable = 1;
 r->mon_enabled = 1;

 return 0;
}
