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
typedef  int u8 ;
typedef  int u32 ;
struct bcma_drv_pcie2 {TYPE_3__* core; } ;
struct bcma_drv_cc {int dummy; } ;
struct TYPE_5__ {int rev; } ;
struct TYPE_6__ {TYPE_2__ id; TYPE_1__* bus; } ;
struct TYPE_4__ {struct bcma_drv_cc drv_cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CORE_PCIE2_CONFIGINDADDR ; 
 int /*<<< orphan*/  BCMA_CORE_PCIE2_CONFIGINDDATA ; 
 int PCIE2_PVT_REG_PM_CLK_PERIOD ; 
 int FUNC0 (struct bcma_drv_cc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_drv_pcie2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct bcma_drv_pcie2 *pcie2)
{
	struct bcma_drv_cc *drv_cc = &pcie2->core->bus->drv_cc;
	u8 core_rev = pcie2->core->id.rev;
	u32 alp_khz, pm_value;

	if (core_rev <= 13) {
		alp_khz = FUNC0(drv_cc) / 1000;
		pm_value = (1000000 * 2) / alp_khz;
		FUNC1(pcie2, BCMA_CORE_PCIE2_CONFIGINDADDR,
			      PCIE2_PVT_REG_PM_CLK_PERIOD);
		FUNC1(pcie2, BCMA_CORE_PCIE2_CONFIGINDDATA, pm_value);
	}
}