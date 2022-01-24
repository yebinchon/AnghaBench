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
typedef  int /*<<< orphan*/  suspend_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  APMU_MOH_IDLE_CFG ; 
 unsigned int APMU_MOH_IDLE_CFG_MOH_PWRDWN ; 
 unsigned int APMU_MOH_IDLE_CFG_MOH_SRAM_PWRDWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_PXA910_PMIC_INT ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(suspend_state_t state)
{
	unsigned int idle_cfg, reg = 0;

	/*pmic thread not completed,exit;otherwise system can't be waked up*/
	reg = FUNC2(FUNC1(IRQ_PXA910_PMIC_INT));
	if ((reg & 0x3) == 0)
		return -EAGAIN;

	idle_cfg = FUNC2(APMU_MOH_IDLE_CFG);
	idle_cfg |= APMU_MOH_IDLE_CFG_MOH_PWRDWN
		| APMU_MOH_IDLE_CFG_MOH_SRAM_PWRDWN;
	FUNC3(idle_cfg, APMU_MOH_IDLE_CFG);

	/* disable L2 */
	FUNC5();
	/* wait for l2 idle */
	while (!(FUNC7(FUNC0(0x8)) & (1 << 16)))
		FUNC8(1);

	FUNC4();

	/* enable L2 */
	FUNC6();
	/* wait for l2 idle */
	while (!(FUNC7(FUNC0(0x8)) & (1 << 16)))
		FUNC8(1);

	idle_cfg = FUNC2(APMU_MOH_IDLE_CFG);
	idle_cfg &= ~(APMU_MOH_IDLE_CFG_MOH_PWRDWN
		| APMU_MOH_IDLE_CFG_MOH_SRAM_PWRDWN);
	FUNC3(idle_cfg, APMU_MOH_IDLE_CFG);

	return 0;
}