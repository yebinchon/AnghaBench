
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* chipset_flush ) () ;} ;


 TYPE_2__ intel_private ;
 int stub1 () ;

void intel_gtt_chipset_flush(void)
{
 if (intel_private.driver->chipset_flush)
  intel_private.driver->chipset_flush();
}
