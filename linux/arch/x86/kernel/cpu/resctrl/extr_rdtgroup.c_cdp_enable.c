
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdt_resource {int alloc_enabled; int alloc_capable; } ;


 int EINVAL ;
 struct rdt_resource* rdt_resources_all ;
 int set_cache_qos_cfg (int,int) ;

__attribute__((used)) static int cdp_enable(int level, int data_type, int code_type)
{
 struct rdt_resource *r_ldata = &rdt_resources_all[data_type];
 struct rdt_resource *r_lcode = &rdt_resources_all[code_type];
 struct rdt_resource *r_l = &rdt_resources_all[level];
 int ret;

 if (!r_l->alloc_capable || !r_ldata->alloc_capable ||
     !r_lcode->alloc_capable)
  return -EINVAL;

 ret = set_cache_qos_cfg(level, 1);
 if (!ret) {
  r_l->alloc_enabled = 0;
  r_ldata->alloc_enabled = 1;
  r_lcode->alloc_enabled = 1;
 }
 return ret;
}
