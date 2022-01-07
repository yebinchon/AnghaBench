
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ alloc_enabled; } ;


 size_t RDT_RESOURCE_L2DATA ;
 size_t RDT_RESOURCE_L3DATA ;
 int cdpl2_disable () ;
 int cdpl3_disable () ;
 TYPE_1__* rdt_resources_all ;

__attribute__((used)) static void cdp_disable_all(void)
{
 if (rdt_resources_all[RDT_RESOURCE_L3DATA].alloc_enabled)
  cdpl3_disable();
 if (rdt_resources_all[RDT_RESOURCE_L2DATA].alloc_enabled)
  cdpl2_disable();
}
