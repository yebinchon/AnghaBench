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
struct TYPE_2__ {scalar_t__ sysram_phys; scalar_t__ secure_firmware; scalar_t__ sysram_base; int /*<<< orphan*/  cpu_state; void* pmu_spare3; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_EXYNOS_MCPM ; 
 int /*<<< orphan*/  EXYNOS5420_ARM_COMMON_OPTION ; 
 scalar_t__ EXYNOS5420_CPU_STATE ; 
 unsigned int EXYNOS5420_EMULATION ; 
 int /*<<< orphan*/  EXYNOS5420_FSYS2_OPTION ; 
 unsigned int EXYNOS5420_L2RSTDISABLE_VALUE ; 
 int /*<<< orphan*/  EXYNOS5420_PSGEN_OPTION ; 
 int /*<<< orphan*/  EXYNOS5420_SFR_AXI_CGDIS1 ; 
 unsigned int EXYNOS5420_UFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int EXYNOS_L2_USE_RETENTION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S5P_INFORM0 ; 
 int /*<<< orphan*/  S5P_PMU_SPARE3 ; 
 int /*<<< orphan*/  SMC_CMD_REG ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcpm_entry_point ; 
 TYPE_1__ pm_state ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC11(void)
{
	unsigned int tmp;

	/* Set wake-up mask registers */
	FUNC5();

	pm_state.pmu_spare3 = FUNC7(S5P_PMU_SPARE3);
	/*
	 * The cpu state needs to be saved and restored so that the
	 * secondary CPUs will enter low power start. Though the U-Boot
	 * is setting the cpu state with low power flag, the kernel
	 * needs to restore it back in case, the primary cpu fails to
	 * suspend for any reason.
	 */
	pm_state.cpu_state = FUNC9(pm_state.sysram_base +
					   EXYNOS5420_CPU_STATE);
	FUNC10(0x0, pm_state.sysram_base + EXYNOS5420_CPU_STATE);
	if (pm_state.secure_firmware)
		FUNC6(SMC_CMD_REG, FUNC2(pm_state.sysram_phys +
							 EXYNOS5420_CPU_STATE),
			   0, 0);

	FUNC4();

	/* ensure at least INFORM0 has the resume address */
	if (FUNC1(CONFIG_EXYNOS_MCPM))
		FUNC8(FUNC3(mcpm_entry_point), S5P_INFORM0);

	tmp = FUNC7(FUNC0(0));
	tmp &= ~EXYNOS_L2_USE_RETENTION;
	FUNC8(tmp, FUNC0(0));

	tmp = FUNC7(EXYNOS5420_SFR_AXI_CGDIS1);
	tmp |= EXYNOS5420_UFS;
	FUNC8(tmp, EXYNOS5420_SFR_AXI_CGDIS1);

	tmp = FUNC7(EXYNOS5420_ARM_COMMON_OPTION);
	tmp &= ~EXYNOS5420_L2RSTDISABLE_VALUE;
	FUNC8(tmp, EXYNOS5420_ARM_COMMON_OPTION);

	tmp = FUNC7(EXYNOS5420_FSYS2_OPTION);
	tmp |= EXYNOS5420_EMULATION;
	FUNC8(tmp, EXYNOS5420_FSYS2_OPTION);

	tmp = FUNC7(EXYNOS5420_PSGEN_OPTION);
	tmp |= EXYNOS5420_EMULATION;
	FUNC8(tmp, EXYNOS5420_PSGEN_OPTION);
}