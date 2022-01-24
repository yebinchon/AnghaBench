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
struct nds32_pmu {int /*<<< orphan*/  name; int /*<<< orphan*/  pmu; int /*<<< orphan*/  num_events; TYPE_1__* plat_device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nds32_pmu*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct nds32_pmu *nds32_pmu, int type)
{
	FUNC0(nds32_pmu);
	FUNC2(&nds32_pmu->plat_device->dev);
	FUNC3("enabled with %s PMU driver, %d counters available\n",
		nds32_pmu->name, nds32_pmu->num_events);
	return FUNC1(&nds32_pmu->pmu, nds32_pmu->name, type);
}