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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ OMAP2_DEVICE_TYPE_EMU ; 
 scalar_t__ OMAP2_DEVICE_TYPE_SEC ; 
 scalar_t__ OMAP3430_REV_ES3_0 ; 
#define  PWRDM_POWER_OFF 130 
#define  PWRDM_POWER_ON 129 
#define  PWRDM_POWER_RET 128 
 int /*<<< orphan*/  SDRC_POWER ; 
 int /*<<< orphan*/  core_pwrdm ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/  (*) (int)) ; 
 int /*<<< orphan*/  mpu_pwrdm ; 
 int /*<<< orphan*/  neon_pwrdm ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap3_arm_context ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 () ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  per_pwrdm ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int const FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC26(void)
{
	/* Variable to tell what needs to be saved and restored
	 * in omap_sram_idle*/
	/* save_state = 0 => Nothing to save and restored */
	/* save_state = 1 => Only L1 and logic lost */
	/* save_state = 2 => Only L2 lost */
	/* save_state = 3 => L1, L2 and logic lost */
	int save_state = 0;
	int mpu_next_state = PWRDM_POWER_ON;
	int per_next_state = PWRDM_POWER_ON;
	int core_next_state = PWRDM_POWER_ON;
	u32 sdrc_pwr = 0;

	mpu_next_state = FUNC20(mpu_pwrdm);
	switch (mpu_next_state) {
	case PWRDM_POWER_ON:
	case PWRDM_POWER_RET:
		/* No need to save context */
		save_state = 0;
		break;
	case PWRDM_POWER_OFF:
		save_state = 3;
		break;
	default:
		/* Invalid state */
		FUNC17("Invalid mpu state in sram_idle\n");
		return;
	}

	/* NEON control */
	if (FUNC22(neon_pwrdm) == PWRDM_POWER_ON)
		FUNC23(neon_pwrdm, mpu_next_state);

	/* Enable IO-PAD and IO-CHAIN wakeups */
	per_next_state = FUNC20(per_pwrdm);
	core_next_state = FUNC20(core_pwrdm);

	FUNC19(NULL);

	/* PER */
	if (per_next_state == PWRDM_POWER_OFF)
		FUNC0();

	/* CORE */
	if (core_next_state < PWRDM_POWER_ON) {
		if (core_next_state == PWRDM_POWER_OFF) {
			FUNC10();
			FUNC8();
		}
	}

	/* Configure PMIC signaling for I2C4 or sys_off_mode */
	FUNC14(core_next_state);

	FUNC11();

	/*
	 * On EMU/HS devices ROM code restores a SRDC value
	 * from scratchpad which has automatic self refresh on timeout
	 * of AUTO_CNT = 1 enabled. This takes care of erratum ID i443.
	 * Hence store/restore the SDRC_POWER register here.
	 */
	if (FUNC2() && FUNC15() >= OMAP3430_REV_ES3_0 &&
	    (FUNC16() == OMAP2_DEVICE_TYPE_EMU ||
	     FUNC16() == OMAP2_DEVICE_TYPE_SEC) &&
	    core_next_state == PWRDM_POWER_OFF)
		sdrc_pwr = FUNC24(SDRC_POWER);

	/*
	 * omap3_arm_context is the location where some ARM context
	 * get saved. The rest is placed on the stack, and restored
	 * from there before resuming.
	 */
	if (save_state)
		FUNC6(omap3_arm_context);
	if (save_state == 1 || save_state == 3)
		FUNC3(save_state, omap34xx_do_sram_idle);
	else
		FUNC5(save_state);

	/* Restore normal SDRC POWER settings */
	if (FUNC2() && FUNC15() >= OMAP3430_REV_ES3_0 &&
	    (FUNC16() == OMAP2_DEVICE_TYPE_EMU ||
	     FUNC16() == OMAP2_DEVICE_TYPE_SEC) &&
	    core_next_state == PWRDM_POWER_OFF)
		FUNC25(sdrc_pwr, SDRC_POWER);

	/* CORE */
	if (core_next_state < PWRDM_POWER_ON &&
	    FUNC21(core_pwrdm) == PWRDM_POWER_OFF) {
		FUNC9();
		FUNC7();
		FUNC13();
		FUNC4();
	} else {
		/*
		 * In off-mode resume path above, omap3_core_restore_context
		 * also handles the INTC autoidle restore done here so limit
		 * this to non-off mode resume paths so we don't do it twice.
		 */
		FUNC12();
	}

	FUNC18(NULL);

	/* PER */
	if (per_next_state == PWRDM_POWER_OFF)
		FUNC1();
}