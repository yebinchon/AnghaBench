
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdt_resource {int alloc_enabled; int alloc_capable; } ;


 struct rdt_resource* rdt_resources_all ;
 int set_cache_qos_cfg (int,int) ;

__attribute__((used)) static void cdp_disable(int level, int data_type, int code_type)
{
 struct rdt_resource *r = &rdt_resources_all[level];

 r->alloc_enabled = r->alloc_capable;

 if (rdt_resources_all[data_type].alloc_enabled) {
  rdt_resources_all[data_type].alloc_enabled = 0;
  rdt_resources_all[code_type].alloc_enabled = 0;
  set_cache_qos_cfg(level, 0);
 }
}
