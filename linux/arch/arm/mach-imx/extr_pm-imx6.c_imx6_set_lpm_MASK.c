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
typedef  enum mxc_cpu_pwr_mode { ____Placeholder_mxc_cpu_pwr_mode } mxc_cpu_pwr_mode ;

/* Variables and functions */
 int BM_CLPCR_ARM_CLK_DIS_ON_LPM ; 
 int BM_CLPCR_BYPASS_PMIC_READY ; 
 int BM_CLPCR_BYP_MMDC_CH0_LPM_HS ; 
 int BM_CLPCR_BYP_MMDC_CH1_LPM_HS ; 
 int BM_CLPCR_LPM ; 
 int BM_CLPCR_SBYOS ; 
 int BM_CLPCR_VSTBY ; 
 int BP_CLPCR_LPM ; 
 int BP_CLPCR_STBY_COUNT ; 
 scalar_t__ CLPCR ; 
 int EINVAL ; 
#define  STOP_POWER_OFF 132 
#define  STOP_POWER_ON 131 
#define  WAIT_CLOCKED 130 
#define  WAIT_UNCLOCKED 129 
#define  WAIT_UNCLOCKED_POWER_OFF 128 
 scalar_t__ ccm_base ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

int FUNC10(enum mxc_cpu_pwr_mode mode)
{
	u32 val = FUNC8(ccm_base + CLPCR);

	val &= ~BM_CLPCR_LPM;
	switch (mode) {
	case WAIT_CLOCKED:
		break;
	case WAIT_UNCLOCKED:
		val |= 0x1 << BP_CLPCR_LPM;
		val |= BM_CLPCR_ARM_CLK_DIS_ON_LPM;
		break;
	case STOP_POWER_ON:
		val |= 0x2 << BP_CLPCR_LPM;
		val &= ~BM_CLPCR_VSTBY;
		val &= ~BM_CLPCR_SBYOS;
		if (FUNC0())
			val |= BM_CLPCR_BYPASS_PMIC_READY;
		if (FUNC0() || FUNC2() || FUNC3() ||
		    FUNC4() || FUNC1() || FUNC5())
			val |= BM_CLPCR_BYP_MMDC_CH0_LPM_HS;
		else
			val |= BM_CLPCR_BYP_MMDC_CH1_LPM_HS;
		break;
	case WAIT_UNCLOCKED_POWER_OFF:
		val |= 0x1 << BP_CLPCR_LPM;
		val &= ~BM_CLPCR_VSTBY;
		val &= ~BM_CLPCR_SBYOS;
		break;
	case STOP_POWER_OFF:
		val |= 0x2 << BP_CLPCR_LPM;
		val |= 0x3 << BP_CLPCR_STBY_COUNT;
		val |= BM_CLPCR_VSTBY;
		val |= BM_CLPCR_SBYOS;
		if (FUNC0() || FUNC2())
			val |= BM_CLPCR_BYPASS_PMIC_READY;
		if (FUNC0() || FUNC2() || FUNC3() ||
		    FUNC4() || FUNC1() || FUNC5())
			val |= BM_CLPCR_BYP_MMDC_CH0_LPM_HS;
		else
			val |= BM_CLPCR_BYP_MMDC_CH1_LPM_HS;
		break;
	default:
		return -EINVAL;
	}

	/*
	 * ERR007265: CCM: When improper low-power sequence is used,
	 * the SoC enters low power mode before the ARM core executes WFI.
	 *
	 * Software workaround:
	 * 1) Software should trigger IRQ #32 (IOMUX) to be always pending
	 *    by setting IOMUX_GPR1_GINT.
	 * 2) Software should then unmask IRQ #32 in GPC before setting CCM
	 *    Low-Power mode.
	 * 3) Software should mask IRQ #32 right after CCM Low-Power mode
	 *    is set (set bits 0-1 of CCM_CLPCR).
	 *
	 * Note that IRQ #32 is GIC SPI #0.
	 */
	if (mode != WAIT_CLOCKED)
		FUNC7(0);
	FUNC9(val, ccm_base + CLPCR);
	if (mode != WAIT_CLOCKED)
		FUNC6(0);

	return 0;
}