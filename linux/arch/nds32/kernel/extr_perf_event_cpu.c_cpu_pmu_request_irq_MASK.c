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
struct platform_device {int /*<<< orphan*/  num_resources; } ;
struct nds32_pmu {struct platform_device* plat_device; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IRQF_NOBALANCING ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct nds32_pmu*) ; 

__attribute__((used)) static int FUNC5(struct nds32_pmu *cpu_pmu, irq_handler_t handler)
{
	int err, irq, irqs;
	struct platform_device *pmu_device = cpu_pmu->plat_device;

	if (!pmu_device)
		return -ENODEV;

	irqs = FUNC0(pmu_device->num_resources, FUNC1());
	if (irqs < 1) {
		FUNC3("no irqs for PMUs defined\n");
		return -ENODEV;
	}

	irq = FUNC2(pmu_device, 0);
	err = FUNC4(irq, handler, IRQF_NOBALANCING, "nds32-pfm",
			  cpu_pmu);
	if (err) {
		FUNC3("unable to request IRQ%d for NDS PMU counters\n",
		       irq);
		return err;
	}
	return 0;
}