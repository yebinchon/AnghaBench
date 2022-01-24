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
 int /*<<< orphan*/  EXYNOS5420_ARM_USE_STANDBY_WFI0 ; 
 int /*<<< orphan*/  EXYNOS5420_KFC_USE_STANDBY_WFI0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S5P_CENTRAL_SEQ_OPTION ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(void)
{
	u32 this_cluster;

	FUNC1();

	/* Setting SEQ_OPTION register */

	this_cluster = FUNC0(FUNC3(), 1);
	if (!this_cluster)
		FUNC2(EXYNOS5420_ARM_USE_STANDBY_WFI0,
				S5P_CENTRAL_SEQ_OPTION);
	else
		FUNC2(EXYNOS5420_KFC_USE_STANDBY_WFI0,
				S5P_CENTRAL_SEQ_OPTION);
	return 0;
}