
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cbm_len; int shareable_bits; } ;
struct rdt_resource {int num_closid; int data_width; int alloc_capable; int alloc_enabled; TYPE_1__ cache; int default_ctrl; } ;


 struct rdt_resource* rdt_resources_all ;

__attribute__((used)) static void rdt_get_cdp_config(int level, int type)
{
 struct rdt_resource *r_l = &rdt_resources_all[level];
 struct rdt_resource *r = &rdt_resources_all[type];

 r->num_closid = r_l->num_closid / 2;
 r->cache.cbm_len = r_l->cache.cbm_len;
 r->default_ctrl = r_l->default_ctrl;
 r->cache.shareable_bits = r_l->cache.shareable_bits;
 r->data_width = (r->cache.cbm_len + 3) / 4;
 r->alloc_capable = 1;




 r->alloc_enabled = 0;
}
