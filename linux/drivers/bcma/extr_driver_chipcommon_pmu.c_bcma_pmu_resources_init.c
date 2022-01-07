
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bcma_drv_cc {TYPE_2__* core; } ;
struct TYPE_3__ {int id; } ;
struct bcma_bus {TYPE_1__ chipinfo; } ;
struct TYPE_4__ {struct bcma_bus* bus; } ;


 int BCMA_CC_PMU_MAXRES_MSK ;
 int BCMA_CC_PMU_MINRES_MSK ;


 int BCMA_RES_4314_CBUCK_LPOM_PU ;
 int BCMA_RES_4314_CBUCK_PFM_PU ;
 int BCMA_RES_4314_CLDO_PU ;
 int BCMA_RES_4314_LDO3P3_PU ;
 int BCMA_RES_4314_LOGIC_RET ;
 int BCMA_RES_4314_LPLDO2_LVM ;
 int BCMA_RES_4314_LPLDO_PU ;
 int BCMA_RES_4314_LQ_AVAIL ;
 int BCMA_RES_4314_MACPHY_RET ;
 int BCMA_RES_4314_MEM_SLEEP ;
 int BCMA_RES_4314_OTP_PU ;
 int BCMA_RES_4314_PMU_BG_PU ;
 int BCMA_RES_4314_PMU_SLEEP_DIS ;
 int BCMA_RES_4314_WL_CORE_READY ;
 int BCMA_RES_4314_WL_PMU_PU ;
 int BCMA_RES_4314_WL_PWRSW_PU ;
 int bcma_debug (struct bcma_bus*,char*,int) ;
 int bcma_pmu_write32 (struct bcma_drv_cc*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void bcma_pmu_resources_init(struct bcma_drv_cc *cc)
{
 struct bcma_bus *bus = cc->core->bus;
 u32 min_msk = 0, max_msk = 0;

 switch (bus->chipinfo.id) {
 case 129:
  min_msk = 0x200D;
  max_msk = 0xFFFF;
  break;
 case 128:
  min_msk = BCMA_RES_4314_LPLDO_PU |
     BCMA_RES_4314_PMU_SLEEP_DIS |
     BCMA_RES_4314_PMU_BG_PU |
     BCMA_RES_4314_CBUCK_LPOM_PU |
     BCMA_RES_4314_CBUCK_PFM_PU |
     BCMA_RES_4314_CLDO_PU |
     BCMA_RES_4314_LPLDO2_LVM |
     BCMA_RES_4314_WL_PMU_PU |
     BCMA_RES_4314_LDO3P3_PU |
     BCMA_RES_4314_OTP_PU |
     BCMA_RES_4314_WL_PWRSW_PU |
     BCMA_RES_4314_LQ_AVAIL |
     BCMA_RES_4314_LOGIC_RET |
     BCMA_RES_4314_MEM_SLEEP |
     BCMA_RES_4314_MACPHY_RET |
     BCMA_RES_4314_WL_CORE_READY;
  max_msk = 0x3FFFFFFF;
  break;
 default:
  bcma_debug(bus, "PMU resource config unknown or not needed for device 0x%04X\n",
      bus->chipinfo.id);
 }


 if (min_msk)
  bcma_pmu_write32(cc, BCMA_CC_PMU_MINRES_MSK, min_msk);
 if (max_msk)
  bcma_pmu_write32(cc, BCMA_CC_PMU_MAXRES_MSK, max_msk);





 usleep_range(2000, 2500);
}
