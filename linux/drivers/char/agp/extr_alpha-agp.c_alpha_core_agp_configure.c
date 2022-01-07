
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bus_base; } ;
struct TYPE_5__ {TYPE_1__ aperture; } ;
typedef TYPE_2__ alpha_agp_info ;
struct TYPE_6__ {int gart_bus_addr; TYPE_2__* dev_private_data; } ;


 TYPE_3__* agp_bridge ;

__attribute__((used)) static int alpha_core_agp_configure(void)
{
 alpha_agp_info *agp = agp_bridge->dev_private_data;
 agp_bridge->gart_bus_addr = agp->aperture.bus_base;
 return 0;
}
