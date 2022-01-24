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

/* Variables and functions */
 int /*<<< orphan*/  CORE_MOD ; 
 int /*<<< orphan*/  OCP_MOD ; 
 int /*<<< orphan*/  OMAP24XX_PM_WKST2 ; 
 int OMAP24XX_USBSTANDBYCTRL ; 
 int /*<<< orphan*/  OMAP2_CONTROL_DEVCONF0 ; 
 int /*<<< orphan*/  OMAP2_PRCM_IRQSTATUS_MPU_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PM_WKST ; 
 int /*<<< orphan*/  PM_WKST1 ; 
 int /*<<< orphan*/  PWRDM_POWER_ON ; 
 int /*<<< orphan*/  PWRDM_POWER_RET ; 
 int /*<<< orphan*/  SDRC_DLLA_CTRL ; 
 int /*<<< orphan*/  SDRC_POWER ; 
 int /*<<< orphan*/  WKUP_MOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core_pwrdm ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  mpu_pwrdm ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  osc_ck ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(void)
{
	u32 l;

	/* There is 1 reference hold for all children of the oscillator
	 * clock, the following will remove it. If no one else uses the
	 * oscillator itself it will be disabled if/when we enter retention
	 * mode.
	 */
	FUNC1(osc_ck);

	/* Clear old wake-up events */
	/* REVISIT: These write to reserved bits? */
	FUNC9(CORE_MOD, PM_WKST1, ~0);
	FUNC9(CORE_MOD, OMAP24XX_PM_WKST2, ~0);
	FUNC9(WKUP_MOD, PM_WKST, ~0);

	FUNC10(core_pwrdm, PWRDM_POWER_RET);
	FUNC10(mpu_pwrdm, PWRDM_POWER_RET);

	/* Workaround to kill USB */
	l = FUNC6(OMAP2_CONTROL_DEVCONF0) | OMAP24XX_USBSTANDBYCTRL;
	FUNC7(l, OMAP2_CONTROL_DEVCONF0);

	FUNC3();

	/* One last check for pending IRQs to avoid extra latency due
	 * to sleeping unnecessarily. */
	if (FUNC8())
		goto no_sleep;

	/* Jump to SRAM suspend code */
	FUNC5(FUNC11(SDRC_DLLA_CTRL),
			   FUNC0(SDRC_DLLA_CTRL),
			   FUNC0(SDRC_POWER));

no_sleep:
	FUNC4();

	FUNC2(osc_ck);

	/* clear CORE wake-up events */
	FUNC9(CORE_MOD, PM_WKST1, ~0);
	FUNC9(CORE_MOD, OMAP24XX_PM_WKST2, ~0);

	/* wakeup domain events - bit 1: GPT1, bit5 GPIO */
	FUNC9(WKUP_MOD, PM_WKST, 0x4 | 0x1);

	/* MPU domain wake events */
	FUNC9(OCP_MOD, OMAP2_PRCM_IRQSTATUS_MPU_OFFSET, 0x1);

	FUNC9(OCP_MOD, OMAP2_PRCM_IRQSTATUS_MPU_OFFSET, 0x20);

	FUNC10(mpu_pwrdm, PWRDM_POWER_ON);
	FUNC10(core_pwrdm, PWRDM_POWER_ON);

	return 0;
}