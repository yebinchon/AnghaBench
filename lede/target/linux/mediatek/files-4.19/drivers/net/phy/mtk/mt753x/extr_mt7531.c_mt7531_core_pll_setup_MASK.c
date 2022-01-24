#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct gsw_mt753x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANA_PLLGP_CR2 ; 
 int /*<<< orphan*/  ANA_PLLGP_CR5 ; 
 int EN_COREPLL ; 
 int /*<<< orphan*/  HWSTRAP ; 
 int PAD_DUAL_SGMII_EN ; 
 int /*<<< orphan*/  PLLGP_CR0 ; 
 int /*<<< orphan*/  PLLGP_EN ; 
 int RG_COREPLL_EN ; 
 int RG_COREPLL_POSDIV_M ; 
 int RG_COREPLL_POSDIV_S ; 
 int RG_COREPLL_SDM_PCW_CHG ; 
 int RG_COREPLL_SDM_PCW_M ; 
 int RG_COREPLL_SDM_PCW_S ; 
 int SW_CLKSW ; 
 int SW_PLLGP ; 
 int /*<<< orphan*/  TOP_SIG_SR ; 
#define  XTAL_25MHZ 129 
#define  XTAL_40MHZ 128 
 int XTAL_FSEL_M ; 
 int XTAL_FSEL_S ; 
 int FUNC0 (struct gsw_mt753x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gsw_mt753x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct gsw_mt753x *gsw)
{
	u32 hwstrap;
	u32 val;

	val = FUNC0(gsw, TOP_SIG_SR);
	if (val & PAD_DUAL_SGMII_EN)
		return;

	hwstrap = FUNC0(gsw, HWSTRAP);

	switch ((hwstrap & XTAL_FSEL_M) >> XTAL_FSEL_S) {
	case XTAL_25MHZ:
		/* Step 1 : Disable MT7531 COREPLL */
		val = FUNC0(gsw, PLLGP_EN);
		val &= ~EN_COREPLL;
		FUNC1(gsw, PLLGP_EN, val);

		/* Step 2: switch to XTAL output */
		val = FUNC0(gsw, PLLGP_EN);
		val |= SW_CLKSW;
		FUNC1(gsw, PLLGP_EN, val);

		val = FUNC0(gsw, PLLGP_CR0);
		val &= ~RG_COREPLL_EN;
		FUNC1(gsw, PLLGP_CR0, val);

		/* Step 3: disable PLLGP and enable program PLLGP */
		val = FUNC0(gsw, PLLGP_EN);
		val |= SW_PLLGP;
		FUNC1(gsw, PLLGP_EN, val);

		/* Step 4: program COREPLL output frequency to 500MHz */
		val = FUNC0(gsw, PLLGP_CR0);
		val &= ~RG_COREPLL_POSDIV_M;
		val |= 2 << RG_COREPLL_POSDIV_S;
		FUNC1(gsw, PLLGP_CR0, val);
		FUNC2(25, 35);

		val = FUNC0(gsw, PLLGP_CR0);
		val &= ~RG_COREPLL_SDM_PCW_M;
		val |= 0x140000 << RG_COREPLL_SDM_PCW_S;
		FUNC1(gsw, PLLGP_CR0, val);

		/* Set feedback divide ratio update signal to high */
		val = FUNC0(gsw, PLLGP_CR0);
		val |= RG_COREPLL_SDM_PCW_CHG;
		FUNC1(gsw, PLLGP_CR0, val);
		/* Wait for at least 16 XTAL clocks */
		FUNC2(10, 20);

		/* Step 5: set feedback divide ratio update signal to low */
		val = FUNC0(gsw, PLLGP_CR0);
		val &= ~RG_COREPLL_SDM_PCW_CHG;
		FUNC1(gsw, PLLGP_CR0, val);

		/* Enable 325M clock for SGMII */
		FUNC1(gsw, ANA_PLLGP_CR5, 0xad0000);

		/* Enable 250SSC clock for RGMII */
		FUNC1(gsw, ANA_PLLGP_CR2, 0x4f40000);

		/* Step 6: Enable MT7531 PLL */
		val = FUNC0(gsw, PLLGP_CR0);
		val |= RG_COREPLL_EN;
		FUNC1(gsw, PLLGP_CR0, val);

		val = FUNC0(gsw, PLLGP_EN);
		val |= EN_COREPLL;
		FUNC1(gsw, PLLGP_EN, val);
		FUNC2(25, 35);

		break;
	case XTAL_40MHZ:
		/* Step 1 : Disable MT7531 COREPLL */
		val = FUNC0(gsw, PLLGP_EN);
		val &= ~EN_COREPLL;
		FUNC1(gsw, PLLGP_EN, val);

		/* Step 2: switch to XTAL output */
		val = FUNC0(gsw, PLLGP_EN);
		val |= SW_CLKSW;
		FUNC1(gsw, PLLGP_EN, val);

		val = FUNC0(gsw, PLLGP_CR0);
		val &= ~RG_COREPLL_EN;
		FUNC1(gsw, PLLGP_CR0, val);

		/* Step 3: disable PLLGP and enable program PLLGP */
		val = FUNC0(gsw, PLLGP_EN);
		val |= SW_PLLGP;
		FUNC1(gsw, PLLGP_EN, val);

		/* Step 4: program COREPLL output frequency to 500MHz */
		val = FUNC0(gsw, PLLGP_CR0);
		val &= ~RG_COREPLL_POSDIV_M;
		val |= 2 << RG_COREPLL_POSDIV_S;
		FUNC1(gsw, PLLGP_CR0, val);
		FUNC2(25, 35);

		val = FUNC0(gsw, PLLGP_CR0);
		val &= ~RG_COREPLL_SDM_PCW_M;
		val |= 0x190000 << RG_COREPLL_SDM_PCW_S;
		FUNC1(gsw, PLLGP_CR0, val);

		/* Set feedback divide ratio update signal to high */
		val = FUNC0(gsw, PLLGP_CR0);
		val |= RG_COREPLL_SDM_PCW_CHG;
		FUNC1(gsw, PLLGP_CR0, val);
		/* Wait for at least 16 XTAL clocks */
		FUNC2(10, 20);

		/* Step 5: set feedback divide ratio update signal to low */
		val = FUNC0(gsw, PLLGP_CR0);
		val &= ~RG_COREPLL_SDM_PCW_CHG;
		FUNC1(gsw, PLLGP_CR0, val);

		/* Enable 325M clock for SGMII */
		FUNC1(gsw, ANA_PLLGP_CR5, 0xad0000);

		/* Enable 250SSC clock for RGMII */
		FUNC1(gsw, ANA_PLLGP_CR2, 0x4f40000);

		/* Step 6: Enable MT7531 PLL */
		val = FUNC0(gsw, PLLGP_CR0);
		val |= RG_COREPLL_EN;
		FUNC1(gsw, PLLGP_CR0, val);

		val = FUNC0(gsw, PLLGP_EN);
		val |= EN_COREPLL;
		FUNC1(gsw, PLLGP_EN, val);
		FUNC2(25, 35);
		break;
	}
}