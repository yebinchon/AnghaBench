#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int pmu_spare3; scalar_t__ sysram_phys; scalar_t__ secure_firmware; scalar_t__ sysram_base; int /*<<< orphan*/  cpu_state; } ;

/* Variables and functions */
 scalar_t__ EXYNOS5420_CPU_STATE ; 
 unsigned long EXYNOS5420_EMULATION ; 
 int /*<<< orphan*/  EXYNOS5420_FSYS2_OPTION ; 
 int /*<<< orphan*/  EXYNOS5420_PSGEN_OPTION ; 
 int /*<<< orphan*/  EXYNOS5420_SFR_AXI_CGDIS1 ; 
 unsigned long EXYNOS5420_UFS ; 
 int EXYNOS5420_USE_STANDBY_WFI_ALL ; 
 int /*<<< orphan*/  EXYNOS5_ARM_CORE0_SYS_PWR_REG ; 
 int /*<<< orphan*/  EXYNOS_AFTR_MAGIC ; 
 int /*<<< orphan*/  S5P_CENTRAL_SEQ_OPTION ; 
 unsigned long S5P_CORE_LOCAL_PWR_EN ; 
 int /*<<< orphan*/  S5P_INFORM1 ; 
 int /*<<< orphan*/  S5P_PMU_SPARE3 ; 
 int /*<<< orphan*/  SMC_CMD_REG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ pm_state ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned long tmp;

	/* Restore the CPU0 low power state register */
	tmp = FUNC3(EXYNOS5_ARM_CORE0_SYS_PWR_REG);
	FUNC4(tmp | S5P_CORE_LOCAL_PWR_EN,
		       EXYNOS5_ARM_CORE0_SYS_PWR_REG);

	/* Restore the sysram cpu state register */
	FUNC5(pm_state.cpu_state,
		       pm_state.sysram_base + EXYNOS5420_CPU_STATE);
	if (pm_state.secure_firmware)
		FUNC2(SMC_CMD_REG,
			   FUNC0(pm_state.sysram_phys +
					    EXYNOS5420_CPU_STATE),
			   EXYNOS_AFTR_MAGIC, 0);

	FUNC4(EXYNOS5420_USE_STANDBY_WFI_ALL,
			S5P_CENTRAL_SEQ_OPTION);

	if (FUNC1())
		goto early_wakeup;

	FUNC4(pm_state.pmu_spare3, S5P_PMU_SPARE3);

early_wakeup:

	tmp = FUNC3(EXYNOS5420_SFR_AXI_CGDIS1);
	tmp &= ~EXYNOS5420_UFS;
	FUNC4(tmp, EXYNOS5420_SFR_AXI_CGDIS1);

	tmp = FUNC3(EXYNOS5420_FSYS2_OPTION);
	tmp &= ~EXYNOS5420_EMULATION;
	FUNC4(tmp, EXYNOS5420_FSYS2_OPTION);

	tmp = FUNC3(EXYNOS5420_PSGEN_OPTION);
	tmp &= ~EXYNOS5420_EMULATION;
	FUNC4(tmp, EXYNOS5420_PSGEN_OPTION);

	/* Clear SLEEP mode set in INFORM1 */
	FUNC4(0x0, S5P_INFORM1);
}