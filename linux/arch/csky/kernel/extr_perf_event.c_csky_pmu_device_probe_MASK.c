#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  capabilities; } ;
struct TYPE_7__ {int /*<<< orphan*/  hw_events; TYPE_2__ pmu; struct platform_device* plat_device; int /*<<< orphan*/  count_width; scalar_t__ max_period; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPUHP_AP_PERF_ONLINE ; 
 int /*<<< orphan*/  DEFAULT_COUNT_WIDTH ; 
 int /*<<< orphan*/  PERF_PMU_CAP_NO_INTERRUPT ; 
 int /*<<< orphan*/  PERF_TYPE_RAW ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ csky_pmu ; 
 int /*<<< orphan*/  csky_pmu_dying_cpu ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  csky_pmu_handle_irq ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csky_pmu_reset ; 
 int /*<<< orphan*/  csky_pmu_starting_cpu ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int FUNC8 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10(struct platform_device *pdev,
			  const struct of_device_id *of_table)
{
	struct device_node *node = pdev->dev.of_node;
	int ret;

	ret = FUNC5();
	if (ret) {
		FUNC9("[perf] failed to probe PMU!\n");
		return ret;
	}

	if (FUNC6(node, "count-width",
				 &csky_pmu.count_width)) {
		csky_pmu.count_width = DEFAULT_COUNT_WIDTH;
	}
	csky_pmu.max_period = FUNC0(csky_pmu.count_width) - 1;

	csky_pmu.plat_device = pdev;

	/* Ensure the PMU has sane values out of reset. */
	FUNC7(csky_pmu_reset, &csky_pmu, 1);

	ret = FUNC3(csky_pmu_handle_irq);
	if (ret) {
		csky_pmu.pmu.capabilities |= PERF_PMU_CAP_NO_INTERRUPT;
		FUNC9("[perf] PMU request irq fail!\n");
	}

	ret = FUNC1(CPUHP_AP_PERF_ONLINE, "AP_PERF_ONLINE",
				csky_pmu_starting_cpu,
				csky_pmu_dying_cpu);
	if (ret) {
		FUNC2();
		FUNC4(csky_pmu.hw_events);
		return ret;
	}

	ret = FUNC8(&csky_pmu.pmu, "cpu", PERF_TYPE_RAW);
	if (ret) {
		FUNC2();
		FUNC4(csky_pmu.hw_events);
	}

	return ret;
}