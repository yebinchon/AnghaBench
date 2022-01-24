#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int rev; TYPE_3__* core; } ;
struct bcma_drv_cc {int capabilities_ext; TYPE_2__ pmu; TYPE_3__* core; } ;
struct bcma_bus {int dummy; } ;
struct TYPE_4__ {int rev; } ;
struct TYPE_6__ {TYPE_1__ id; struct bcma_bus* bus; } ;

/* Variables and functions */
 int BCMA_CC_CAP_EXT_AOB_PRESENT ; 
 int /*<<< orphan*/  BCMA_CC_PMU_CAP ; 
 int BCMA_CC_PMU_CAP_REVISION ; 
 int /*<<< orphan*/  BCMA_CORE_PMU ; 
 int /*<<< orphan*/  FUNC0 (struct bcma_bus*,char*,int,int) ; 
 TYPE_3__* FUNC1 (struct bcma_bus*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bcma_drv_cc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_bus*,char*) ; 

void FUNC4(struct bcma_drv_cc *cc)
{
	struct bcma_bus *bus = cc->core->bus;
	u32 pmucap;

	if (cc->core->id.rev >= 35 &&
	    cc->capabilities_ext & BCMA_CC_CAP_EXT_AOB_PRESENT) {
		cc->pmu.core = FUNC1(bus, BCMA_CORE_PMU);
		if (!cc->pmu.core)
			FUNC3(bus, "Couldn't find expected PMU core");
	}
	if (!cc->pmu.core)
		cc->pmu.core = cc->core;

	pmucap = FUNC2(cc, BCMA_CC_PMU_CAP);
	cc->pmu.rev = (pmucap & BCMA_CC_PMU_CAP_REVISION);

	FUNC0(bus, "Found rev %u PMU (capabilities 0x%08X)\n", cc->pmu.rev,
		   pmucap);
}