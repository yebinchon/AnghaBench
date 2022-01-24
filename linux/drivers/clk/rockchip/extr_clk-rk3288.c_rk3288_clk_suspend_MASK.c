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

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ RK3288_MODE_CON ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ rk3288_cru_base ; 
 int* rk3288_saved_cru_reg_ids ; 
 int /*<<< orphan*/ * rk3288_saved_cru_regs ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(void)
{
	int i, reg_id;

	for (i = 0; i < FUNC0(rk3288_saved_cru_reg_ids); i++) {
		reg_id = rk3288_saved_cru_reg_ids[i];

		rk3288_saved_cru_regs[i] =
				FUNC2(rk3288_cru_base + reg_id);
	}

	/*
	 * Going into deep sleep (specifically setting PMU_CLR_DMA in
	 * RK3288_PMU_PWRMODE_CON1) appears to fail unless
	 * "aclk_dmac1" is on.
	 */
	FUNC3(1 << (12 + 16),
		       rk3288_cru_base + FUNC1(10));

	/*
	 * Switch PLLs other than DPLL (for SDRAM) to slow mode to
	 * avoid crashes on resume. The Mask ROM on the system will
	 * put APLL, CPLL, and GPLL into slow mode at resume time
	 * anyway (which is why we restore them), but we might not
	 * even make it to the Mask ROM if this isn't done at suspend
	 * time.
	 *
	 * NOTE: only APLL truly matters here, but we'll do them all.
	 */

	FUNC3(0xf3030000, rk3288_cru_base + RK3288_MODE_CON);

	return 0;
}