
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bcma_drv_cc {int early_setup_done; int capabilities; void* capabilities_ext; TYPE_2__* core; void* status; int gpio_lock; } ;
struct bcma_bus {scalar_t__ hosttype; } ;
struct TYPE_3__ {int rev; } ;
struct TYPE_4__ {TYPE_1__ id; struct bcma_bus* bus; } ;


 int BCMA_CC_CAP ;
 int BCMA_CC_CAP_EXT ;
 int BCMA_CC_CAP_PMU ;
 int BCMA_CC_CHIPSTAT ;
 scalar_t__ BCMA_HOSTTYPE_SOC ;
 void* bcma_cc_read32 (struct bcma_drv_cc*,int ) ;
 int bcma_core_chipcommon_flash_detect (struct bcma_drv_cc*) ;
 int bcma_pmu_early_init (struct bcma_drv_cc*) ;
 int spin_lock_init (int *) ;

void bcma_core_chipcommon_early_init(struct bcma_drv_cc *cc)
{
 struct bcma_bus *bus = cc->core->bus;

 if (cc->early_setup_done)
  return;

 spin_lock_init(&cc->gpio_lock);

 if (cc->core->id.rev >= 11)
  cc->status = bcma_cc_read32(cc, BCMA_CC_CHIPSTAT);
 cc->capabilities = bcma_cc_read32(cc, BCMA_CC_CAP);
 if (cc->core->id.rev >= 35)
  cc->capabilities_ext = bcma_cc_read32(cc, BCMA_CC_CAP_EXT);

 if (cc->capabilities & BCMA_CC_CAP_PMU)
  bcma_pmu_early_init(cc);

 if (bus->hosttype == BCMA_HOSTTYPE_SOC)
  bcma_core_chipcommon_flash_detect(cc);

 cc->early_setup_done = 1;
}
