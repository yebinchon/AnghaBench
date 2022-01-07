
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bcma_drv_cc {int capabilities; TYPE_1__* core; } ;
struct TYPE_4__ {scalar_t__ id; int rev; } ;
struct bcma_bus {TYPE_2__ chipinfo; } ;
struct TYPE_3__ {struct bcma_bus* bus; } ;


 int BCMA_CC_CAP_PMU ;
 scalar_t__ BCMA_CHIP_ID_BCM53573 ;
 int WARN (int,char*) ;

__attribute__((used)) static bool bcma_core_cc_has_pmu_watchdog(struct bcma_drv_cc *cc)
{
 struct bcma_bus *bus = cc->core->bus;

 if (cc->capabilities & BCMA_CC_CAP_PMU) {
  if (bus->chipinfo.id == BCMA_CHIP_ID_BCM53573) {
   WARN(bus->chipinfo.rev <= 1, "No watchdog available\n");




   return 0;
  }
  return 1;
 } else {
  return 0;
 }
}
