
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int rev; } ;
struct bcma_drv_cc {int status; TYPE_3__ pmu; TYPE_1__* core; } ;
struct TYPE_5__ {int id; } ;
struct bcma_bus {TYPE_2__ chipinfo; } ;
struct TYPE_4__ {struct bcma_bus* bus; } ;


 int BCMA_CC_CHIPST_4360_XTAL_40MZ ;
 int BCMA_CC_PMU_ALP_CLOCK ;
 int bcma_warn (struct bcma_bus*,char*,int,int ,int) ;

u32 bcma_pmu_get_alp_clock(struct bcma_drv_cc *cc)
{
 struct bcma_bus *bus = cc->core->bus;

 switch (bus->chipinfo.id) {
 case 148:
 case 147:
 case 146:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
 case 135:
 case 134:
 case 133:
 case 132:
 case 130:
 case 129:
 case 128:

  return 20000 * 1000;
 case 136:
 case 131:

  return 25000 * 1000;
 case 139:
 case 138:
 case 137:
  if (cc->status & BCMA_CC_CHIPST_4360_XTAL_40MZ)
   return 40000 * 1000;
  else
   return 20000 * 1000;
 default:
  bcma_warn(bus, "No ALP clock specified for %04X device, pmu rev. %d, using default %d Hz\n",
     bus->chipinfo.id, cc->pmu.rev, BCMA_CC_PMU_ALP_CLOCK);
 }
 return BCMA_CC_PMU_ALP_CLOCK;
}
