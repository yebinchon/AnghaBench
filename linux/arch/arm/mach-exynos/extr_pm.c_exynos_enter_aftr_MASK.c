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
 scalar_t__ ARM_CPU_PART_CORTEX_A9 ; 
 int /*<<< orphan*/  C2_STATE ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  S5P_CENTRAL_SEQ_OPTION ; 
 int S5P_USE_STANDBY_WFE0 ; 
 int S5P_USE_STANDBY_WFI0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exynos_aftr_finisher ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  resume ; 
 unsigned int FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 () ; 

void FUNC15(void)
{
	unsigned int cpuid = FUNC12();

	FUNC1();

	if (FUNC13())
		FUNC9(cpuid, C2_STATE);

	FUNC7();

	if (FUNC14()) {
		/* Setting SEQ_OPTION register */
		FUNC10(S5P_USE_STANDBY_WFI0 | S5P_USE_STANDBY_WFE0,
			       S5P_CENTRAL_SEQ_OPTION);
	}

	FUNC3(0, exynos_aftr_finisher);

	if (FUNC11() == ARM_CPU_PART_CORTEX_A9) {
		FUNC8();
		if (FUNC0(resume) == -ENOSYS)
			FUNC5();
	}

	FUNC6();

	if (FUNC13())
		FUNC4(cpuid, C2_STATE);

	FUNC2();
}