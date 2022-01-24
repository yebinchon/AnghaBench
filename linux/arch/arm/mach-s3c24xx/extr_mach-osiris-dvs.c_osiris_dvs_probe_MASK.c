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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_TRANSITION_NOTIFIER ; 
 int /*<<< orphan*/  OSIRIS_GPIO_DVS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  osiris_dvs_nb ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	int ret;

	FUNC2(&pdev->dev, "initialising\n");

	ret = FUNC5(OSIRIS_GPIO_DVS, "osiris-dvs");
	if (ret) {
		FUNC1(&pdev->dev, "cannot claim gpio\n");
		goto err_nogpio;
	}

	/* start with dvs disabled */
	FUNC3(OSIRIS_GPIO_DVS, 1);

	ret = FUNC0(&osiris_dvs_nb,
					CPUFREQ_TRANSITION_NOTIFIER);
	if (ret) {
		FUNC1(&pdev->dev, "failed to register with cpufreq\n");
		goto err_nofreq;
	}

	FUNC6(true);

	return 0;

err_nofreq:
	FUNC4(OSIRIS_GPIO_DVS);

err_nogpio:
	return ret;
}