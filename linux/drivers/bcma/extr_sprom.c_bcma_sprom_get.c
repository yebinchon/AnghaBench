
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int core; } ;
struct TYPE_3__ {scalar_t__ id; } ;
struct bcma_bus {int sprom; TYPE_2__ drv_cc; TYPE_1__ chipinfo; } ;


 int ARRAY_SIZE (size_t const*) ;
 int BCMA_CC_SPROM ;
 scalar_t__ BCMA_CHIP_ID_BCM4331 ;
 scalar_t__ BCMA_CHIP_ID_BCM43431 ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;



 int bcma_chipco_bcm4331_ext_pa_lines_ctl (TYPE_2__*,int) ;
 int bcma_debug (struct bcma_bus*,char*,int ) ;
 int bcma_fill_sprom_with_fallback (struct bcma_bus*,int *) ;
 int bcma_sprom_ext_available (struct bcma_bus*) ;
 int bcma_sprom_extract_r8 (struct bcma_bus*,int *) ;
 int bcma_sprom_onchip_available (struct bcma_bus*) ;
 int bcma_sprom_onchip_offset (struct bcma_bus*) ;
 int bcma_sprom_read (struct bcma_bus*,int ,int *,size_t) ;
 int bcma_sprom_valid (struct bcma_bus*,int *,size_t) ;
 int bcma_warn (struct bcma_bus*,char*) ;
 int * kcalloc (size_t,int,int ) ;
 int kfree (int *) ;

int bcma_sprom_get(struct bcma_bus *bus)
{
 u16 offset = BCMA_CC_SPROM;
 u16 *sprom;
 static const size_t sprom_sizes[] = {
  128,
  130,
  129,
 };
 int i, err = 0;

 if (!bus->drv_cc.core)
  return -EOPNOTSUPP;

 if (!bcma_sprom_ext_available(bus)) {
  bool sprom_onchip;






  sprom_onchip = bcma_sprom_onchip_available(bus);
  if (sprom_onchip) {

   offset = bcma_sprom_onchip_offset(bus);
  }
  if (!offset || !sprom_onchip) {





   err = bcma_fill_sprom_with_fallback(bus, &bus->sprom);
   return err;
  }
 }

 if (bus->chipinfo.id == BCMA_CHIP_ID_BCM4331 ||
     bus->chipinfo.id == BCMA_CHIP_ID_BCM43431)
  bcma_chipco_bcm4331_ext_pa_lines_ctl(&bus->drv_cc, 0);

 bcma_debug(bus, "SPROM offset 0x%x\n", offset);
 for (i = 0; i < ARRAY_SIZE(sprom_sizes); i++) {
  size_t words = sprom_sizes[i];

  sprom = kcalloc(words, sizeof(u16), GFP_KERNEL);
  if (!sprom)
   return -ENOMEM;

  bcma_sprom_read(bus, offset, sprom, words);
  err = bcma_sprom_valid(bus, sprom, words);
  if (!err)
   break;

  kfree(sprom);
 }

 if (bus->chipinfo.id == BCMA_CHIP_ID_BCM4331 ||
     bus->chipinfo.id == BCMA_CHIP_ID_BCM43431)
  bcma_chipco_bcm4331_ext_pa_lines_ctl(&bus->drv_cc, 1);

 if (err) {
  bcma_warn(bus, "Invalid SPROM read from the PCIe card, trying to use fallback SPROM\n");
  err = bcma_fill_sprom_with_fallback(bus, &bus->sprom);
 } else {
  bcma_sprom_extract_r8(bus, sprom);
  kfree(sprom);
 }

 return err;
}
