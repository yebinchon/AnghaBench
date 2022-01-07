
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bcma_drv_pcie2 {int reqsize; TYPE_1__* core; } ;
struct bcma_chipinfo {int id; int rev; } ;
struct bcma_bus {struct bcma_chipinfo chipinfo; } ;
struct TYPE_2__ {struct bcma_bus* bus; } ;




 int BCMA_CORE_PCIE2_SPROM (int) ;
 int bcma_core_pcie2_cfg_write (struct bcma_drv_pcie2*,int,int) ;
 int bcma_core_pcie2_hw_ltr_war (struct bcma_drv_pcie2*) ;
 int bcma_core_pcie2_war_delay_perst_enab (struct bcma_drv_pcie2*,int) ;
 int pcie2_read32 (struct bcma_drv_pcie2*,int ) ;
 int pciedev_crwlpciegen2 (struct bcma_drv_pcie2*) ;
 int pciedev_crwlpciegen2_180 (struct bcma_drv_pcie2*) ;
 int pciedev_crwlpciegen2_182 (struct bcma_drv_pcie2*) ;
 int pciedev_reg_pm_clk_period (struct bcma_drv_pcie2*) ;

void bcma_core_pcie2_init(struct bcma_drv_pcie2 *pcie2)
{
 struct bcma_bus *bus = pcie2->core->bus;
 struct bcma_chipinfo *ci = &bus->chipinfo;
 u32 tmp;

 tmp = pcie2_read32(pcie2, BCMA_CORE_PCIE2_SPROM(54));
 if ((tmp & 0xe) >> 1 == 2)
  bcma_core_pcie2_cfg_write(pcie2, 0x4e0, 0x17);

 switch (bus->chipinfo.id) {
 case 128:
 case 129:
  pcie2->reqsize = 1024;
  break;
 default:
  pcie2->reqsize = 128;
  break;
 }

 if (ci->id == 128 && ci->rev > 3)
  bcma_core_pcie2_war_delay_perst_enab(pcie2, 1);
 bcma_core_pcie2_hw_ltr_war(pcie2);
 pciedev_crwlpciegen2(pcie2);
 pciedev_reg_pm_clk_period(pcie2);
 pciedev_crwlpciegen2_180(pcie2);
 pciedev_crwlpciegen2_182(pcie2);
}
