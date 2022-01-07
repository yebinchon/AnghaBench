
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int rev; } ;
struct bcma_drv_cc {TYPE_2__ pmu; TYPE_3__* core; } ;
struct TYPE_4__ {int id; } ;
struct bcma_bus {TYPE_1__ chipinfo; } ;
struct TYPE_6__ {struct bcma_bus* bus; } ;


 int BCMA_CC_PMU15_PLL_PC0_FREQTGT_MASK ;
 int BCMA_CC_PMU15_PLL_PC0_FREQTGT_SHIFT ;
 int BCMA_CC_PMU15_PLL_PLLCTL0 ;
 int BCMA_CC_PMU_CTL ;
 int BCMA_CC_PMU_CTL_PLL_UPD ;
 int BCMA_CC_PMU_MAXRES_MSK ;
 int BCMA_CC_PMU_MINRES_MSK ;

 int BCMA_CLKCTLST ;
 int BCMA_CLKCTLST_HAVEHT ;
 int BCMA_RES_4314_HT_AVAIL ;
 int BCMA_RES_4314_MACPHY_CLK_AVAIL ;
 int bcma_chipco_pll_read (struct bcma_drv_cc*,int ) ;
 int bcma_chipco_pll_write (struct bcma_drv_cc*,int ,int) ;
 int bcma_debug (struct bcma_bus*,char*) ;
 int bcma_err (struct bcma_bus*,char*,int) ;
 int bcma_pmu_mask32 (struct bcma_drv_cc*,int ,int) ;
 int bcma_pmu_set32 (struct bcma_drv_cc*,int ,int ) ;
 int bcma_wait_value (TYPE_3__*,int ,int ,int ,int) ;

__attribute__((used)) static void bcma_pmu2_pll_init0(struct bcma_drv_cc *cc, u32 xtalfreq)
{
 struct bcma_bus *bus = cc->core->bus;
 u32 freq_tgt_target = 0, freq_tgt_current;
 u32 pll0, mask;

 switch (bus->chipinfo.id) {
 case 128:

  switch (xtalfreq) {
  case 12000:
   freq_tgt_target = 0x50D52;
   break;
  case 20000:
   freq_tgt_target = 0x307FE;
   break;
  case 26000:
   freq_tgt_target = 0x254EA;
   break;
  case 37400:
   freq_tgt_target = 0x19EF8;
   break;
  case 52000:
   freq_tgt_target = 0x12A75;
   break;
  }
  break;
 }

 if (!freq_tgt_target) {
  bcma_err(bus, "Unknown TGT frequency for xtalfreq %d\n",
    xtalfreq);
  return;
 }

 pll0 = bcma_chipco_pll_read(cc, BCMA_CC_PMU15_PLL_PLLCTL0);
 freq_tgt_current = (pll0 & BCMA_CC_PMU15_PLL_PC0_FREQTGT_MASK) >>
  BCMA_CC_PMU15_PLL_PC0_FREQTGT_SHIFT;

 if (freq_tgt_current == freq_tgt_target) {
  bcma_debug(bus, "Target TGT frequency already set\n");
  return;
 }


 switch (bus->chipinfo.id) {
 case 128:
  mask = (u32)~(BCMA_RES_4314_HT_AVAIL |
         BCMA_RES_4314_MACPHY_CLK_AVAIL);

  bcma_pmu_mask32(cc, BCMA_CC_PMU_MINRES_MSK, mask);
  bcma_pmu_mask32(cc, BCMA_CC_PMU_MAXRES_MSK, mask);
  bcma_wait_value(cc->core, BCMA_CLKCTLST,
    BCMA_CLKCTLST_HAVEHT, 0, 20000);
  break;
 }

 pll0 &= ~BCMA_CC_PMU15_PLL_PC0_FREQTGT_MASK;
 pll0 |= freq_tgt_target << BCMA_CC_PMU15_PLL_PC0_FREQTGT_SHIFT;
 bcma_chipco_pll_write(cc, BCMA_CC_PMU15_PLL_PLLCTL0, pll0);


 if (cc->pmu.rev >= 2)
  bcma_pmu_set32(cc, BCMA_CC_PMU_CTL, BCMA_CC_PMU_CTL_PLL_UPD);


}
