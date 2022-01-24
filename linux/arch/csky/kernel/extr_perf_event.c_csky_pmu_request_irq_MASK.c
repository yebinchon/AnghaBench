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
struct platform_device {int /*<<< orphan*/  num_resources; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;
struct TYPE_2__ {int /*<<< orphan*/  hw_events; struct platform_device* plat_device; } ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_1__ csky_pmu ; 
 scalar_t__ csky_pmu_irq ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(irq_handler_t handler)
{
	int err, irqs;
	struct platform_device *pmu_device = csky_pmu.plat_device;

	if (!pmu_device)
		return -ENODEV;

	irqs = FUNC0(pmu_device->num_resources, FUNC1());
	if (irqs < 1) {
		FUNC3("no irqs for PMUs defined\n");
		return -ENODEV;
	}

	csky_pmu_irq = FUNC2(pmu_device, 0);
	if (csky_pmu_irq < 0)
		return -ENODEV;
	err = FUNC4(csky_pmu_irq, handler, "csky-pmu",
				 FUNC5(csky_pmu.hw_events));
	if (err) {
		FUNC3("unable to request IRQ%d for CSKY PMU counters\n",
		       csky_pmu_irq);
		return err;
	}

	return 0;
}