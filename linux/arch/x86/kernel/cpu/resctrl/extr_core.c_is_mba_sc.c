
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mba_sc; } ;
struct rdt_resource {TYPE_2__ membw; } ;
struct TYPE_4__ {int mba_sc; } ;
struct TYPE_6__ {TYPE_1__ membw; } ;


 size_t RDT_RESOURCE_MBA ;
 TYPE_3__* rdt_resources_all ;

bool is_mba_sc(struct rdt_resource *r)
{
 if (!r)
  return rdt_resources_all[RDT_RESOURCE_MBA].membw.mba_sc;

 return r->membw.mba_sc;
}
