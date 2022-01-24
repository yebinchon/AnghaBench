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
 int /*<<< orphan*/  EXYNOS3_ARM_L2_OPTION ; 
 unsigned int EXYNOS5_OPTION_USE_RETENTION ; 
 int /*<<< orphan*/  S5P_INFORM0 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exynos_cpu_resume ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned int tmp;

	/* Set wake-up mask registers */
	FUNC2();

	tmp = FUNC3(EXYNOS3_ARM_L2_OPTION);
	tmp &= ~EXYNOS5_OPTION_USE_RETENTION;
	FUNC4(tmp, EXYNOS3_ARM_L2_OPTION);

	FUNC1();

	/* ensure at least INFORM0 has the resume address */
	FUNC4(FUNC0(exynos_cpu_resume), S5P_INFORM0);
}