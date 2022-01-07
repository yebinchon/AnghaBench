
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shutdown; int remove; int probe; int * bus; } ;
struct mips_cdmm_driver {TYPE_1__ drv; scalar_t__ shutdown; scalar_t__ remove; scalar_t__ probe; } ;


 int driver_register (TYPE_1__*) ;
 int mips_cdmm_bustype ;
 int mips_cdmm_probe ;
 int mips_cdmm_remove ;
 int mips_cdmm_shutdown ;

int mips_cdmm_driver_register(struct mips_cdmm_driver *drv)
{
 drv->drv.bus = &mips_cdmm_bustype;

 if (drv->probe)
  drv->drv.probe = mips_cdmm_probe;
 if (drv->remove)
  drv->drv.remove = mips_cdmm_remove;
 if (drv->shutdown)
  drv->drv.shutdown = mips_cdmm_shutdown;

 return driver_register(&drv->drv);
}
