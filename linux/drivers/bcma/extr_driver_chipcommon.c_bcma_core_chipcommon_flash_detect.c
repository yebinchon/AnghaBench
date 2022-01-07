
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bcma_drv_cc {int capabilities; TYPE_2__* core; } ;
struct TYPE_4__ {scalar_t__ id; } ;
struct bcma_bus {TYPE_1__ chipinfo; } ;
struct TYPE_6__ {int rev; } ;
struct TYPE_5__ {TYPE_3__ id; struct bcma_bus* bus; } ;


 int BCMA_CC_CAP_FLASHT ;
 int BCMA_CC_CAP_NFLASH ;



 scalar_t__ BCMA_CHIP_ID_BCM4706 ;
 int bcma_debug (struct bcma_bus*,char*) ;
 int bcma_err (struct bcma_bus*,char*) ;
 int bcma_nflash_init (struct bcma_drv_cc*) ;
 int bcma_pflash_init (struct bcma_drv_cc*) ;
 int bcma_sflash_init (struct bcma_drv_cc*) ;

__attribute__((used)) static void bcma_core_chipcommon_flash_detect(struct bcma_drv_cc *cc)
{
 struct bcma_bus *bus = cc->core->bus;

 switch (cc->capabilities & BCMA_CC_CAP_FLASHT) {
 case 128:
 case 130:
  bcma_debug(bus, "Found serial flash\n");
  bcma_sflash_init(cc);
  break;
 case 129:
  bcma_debug(bus, "Found parallel flash\n");
  bcma_pflash_init(cc);
  break;
 default:
  bcma_err(bus, "Flash type not supported\n");
 }

 if (cc->core->id.rev == 38 ||
     bus->chipinfo.id == BCMA_CHIP_ID_BCM4706) {
  if (cc->capabilities & BCMA_CC_CAP_NFLASH) {
   bcma_debug(bus, "Found NAND flash\n");
   bcma_nflash_init(cc);
  }
 }
}
