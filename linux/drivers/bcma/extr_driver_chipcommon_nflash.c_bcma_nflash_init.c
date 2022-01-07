
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int present; int boot; } ;
struct bcma_drv_cc {int capabilities; int status; TYPE_4__ nflash; TYPE_5__* core; } ;
struct TYPE_7__ {scalar_t__ id; } ;
struct bcma_bus {TYPE_1__ chipinfo; } ;
struct TYPE_9__ {TYPE_4__* platform_data; } ;
struct TYPE_12__ {TYPE_3__ dev; } ;
struct TYPE_8__ {int rev; } ;
struct TYPE_11__ {TYPE_2__ id; struct bcma_bus* bus; } ;


 int BCMA_CC_CAP_NFLASH ;
 int BCMA_CC_CHIPST_5357_NAND_BOOT ;
 scalar_t__ BCMA_CHIP_ID_BCM4706 ;
 int ENODEV ;
 int ENOTSUPP ;
 int bcma_err (struct bcma_bus*,char*) ;
 TYPE_6__ bcma_nflash_dev ;

int bcma_nflash_init(struct bcma_drv_cc *cc)
{
 struct bcma_bus *bus = cc->core->bus;

 if (bus->chipinfo.id != BCMA_CHIP_ID_BCM4706 &&
     cc->core->id.rev != 38) {
  bcma_err(bus, "NAND flash on unsupported board!\n");
  return -ENOTSUPP;
 }

 if (!(cc->capabilities & BCMA_CC_CAP_NFLASH)) {
  bcma_err(bus, "NAND flash not present according to ChipCommon\n");
  return -ENODEV;
 }

 cc->nflash.present = 1;
 if (cc->core->id.rev == 38 &&
     (cc->status & BCMA_CC_CHIPST_5357_NAND_BOOT))
  cc->nflash.boot = 1;



 bcma_nflash_dev.dev.platform_data = &cc->nflash;

 return 0;
}
