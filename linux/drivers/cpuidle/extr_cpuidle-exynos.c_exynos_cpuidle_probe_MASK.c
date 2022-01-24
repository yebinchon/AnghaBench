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
struct TYPE_2__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cpu_possible_mask ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  exynos_coupled_idle_driver ; 
 scalar_t__ exynos_cpuidle_pdata ; 
 void* exynos_enter_aftr ; 
 int /*<<< orphan*/  exynos_idle_driver ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	int ret;

	if (FUNC0(CONFIG_SMP) &&
	    (FUNC3("samsung,exynos4210") ||
	     FUNC3("samsung,exynos3250"))) {
		exynos_cpuidle_pdata = pdev->dev.platform_data;

		ret = FUNC1(&exynos_coupled_idle_driver,
				       cpu_possible_mask);
	} else {
		exynos_enter_aftr = (void *)(pdev->dev.platform_data);

		ret = FUNC1(&exynos_idle_driver, NULL);
	}

	if (ret) {
		FUNC2(&pdev->dev, "failed to register cpuidle driver\n");
		return ret;
	}

	return 0;
}