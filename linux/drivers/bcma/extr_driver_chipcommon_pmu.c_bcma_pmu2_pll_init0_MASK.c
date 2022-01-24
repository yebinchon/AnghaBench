#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int rev; } ;
struct bcma_drv_cc {TYPE_2__ pmu; TYPE_3__* core; } ;
struct TYPE_4__ {int id; } ;
struct bcma_bus {TYPE_1__ chipinfo; } ;
struct TYPE_6__ {struct bcma_bus* bus; } ;

/* Variables and functions */
 int BCMA_CC_PMU15_PLL_PC0_FREQTGT_MASK ; 
 int BCMA_CC_PMU15_PLL_PC0_FREQTGT_SHIFT ; 
 int /*<<< orphan*/  BCMA_CC_PMU15_PLL_PLLCTL0 ; 
 int /*<<< orphan*/  BCMA_CC_PMU_CTL ; 
 int /*<<< orphan*/  BCMA_CC_PMU_CTL_PLL_UPD ; 
 int /*<<< orphan*/  BCMA_CC_PMU_MAXRES_MSK ; 
 int /*<<< orphan*/  BCMA_CC_PMU_MINRES_MSK ; 
#define  BCMA_CHIP_ID_BCM43142 128 
 int /*<<< orphan*/  BCMA_CLKCTLST ; 
 int /*<<< orphan*/  BCMA_CLKCTLST_HAVEHT ; 
 int BCMA_RES_4314_HT_AVAIL ; 
 int BCMA_RES_4314_MACPHY_CLK_AVAIL ; 
 int FUNC0 (struct bcma_drv_cc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_bus*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_bus*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct bcma_drv_cc *cc, u32 xtalfreq)
{
	struct bcma_bus *bus = cc->core->bus;
	u32 freq_tgt_target = 0, freq_tgt_current;
	u32 pll0, mask;

	switch (bus->chipinfo.id) {
	case BCMA_CHIP_ID_BCM43142:
		/* pmu2_xtaltab0_adfll_485 */
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
		FUNC3(bus, "Unknown TGT frequency for xtalfreq %d\n",
			 xtalfreq);
		return;
	}

	pll0 = FUNC0(cc, BCMA_CC_PMU15_PLL_PLLCTL0);
	freq_tgt_current = (pll0 & BCMA_CC_PMU15_PLL_PC0_FREQTGT_MASK) >>
		BCMA_CC_PMU15_PLL_PC0_FREQTGT_SHIFT;

	if (freq_tgt_current == freq_tgt_target) {
		FUNC2(bus, "Target TGT frequency already set\n");
		return;
	}

	/* Turn off PLL */
	switch (bus->chipinfo.id) {
	case BCMA_CHIP_ID_BCM43142:
		mask = (u32)~(BCMA_RES_4314_HT_AVAIL |
			      BCMA_RES_4314_MACPHY_CLK_AVAIL);

		FUNC4(cc, BCMA_CC_PMU_MINRES_MSK, mask);
		FUNC4(cc, BCMA_CC_PMU_MAXRES_MSK, mask);
		FUNC6(cc->core, BCMA_CLKCTLST,
				BCMA_CLKCTLST_HAVEHT, 0, 20000);
		break;
	}

	pll0 &= ~BCMA_CC_PMU15_PLL_PC0_FREQTGT_MASK;
	pll0 |= freq_tgt_target << BCMA_CC_PMU15_PLL_PC0_FREQTGT_SHIFT;
	FUNC1(cc, BCMA_CC_PMU15_PLL_PLLCTL0, pll0);

	/* Flush */
	if (cc->pmu.rev >= 2)
		FUNC5(cc, BCMA_CC_PMU_CTL, BCMA_CC_PMU_CTL_PLL_UPD);

	/* TODO: Do we need to update OTP? */
}