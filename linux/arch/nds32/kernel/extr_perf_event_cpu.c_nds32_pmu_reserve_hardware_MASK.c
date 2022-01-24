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
struct nds32_pmu {int (* request_irq ) (struct nds32_pmu*,int /*<<< orphan*/ ) ;struct platform_device* plat_device; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  nds32_pmu_dispatch_irq ; 
 int /*<<< orphan*/  FUNC0 (struct nds32_pmu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nds32_pmu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nds32_pmu *nds32_pmu)
{
	int err;
	struct platform_device *pmu_device = nds32_pmu->plat_device;

	if (!pmu_device)
		return -ENODEV;

	FUNC1(&pmu_device->dev);
	err = nds32_pmu->request_irq(nds32_pmu, nds32_pmu_dispatch_irq);
	if (err) {
		FUNC0(nds32_pmu);
		return err;
	}

	return 0;
}