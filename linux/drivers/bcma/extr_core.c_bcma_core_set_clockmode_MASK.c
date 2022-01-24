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
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ id; } ;
struct bcma_device {int /*<<< orphan*/  bus; TYPE_1__ id; } ;
typedef  enum bcma_clkmode { ____Placeholder_bcma_clkmode } bcma_clkmode ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CLKCTLST ; 
 int /*<<< orphan*/  BCMA_CLKCTLST_FORCEHT ; 
 int BCMA_CLKCTLST_HAVEHT ; 
#define  BCMA_CLKMODE_DYNAMIC 129 
#define  BCMA_CLKMODE_FAST 128 
 scalar_t__ BCMA_CORE_80211 ; 
 scalar_t__ BCMA_CORE_CHIPCOMMON ; 
 scalar_t__ BCMA_CORE_PCIE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct bcma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void FUNC6(struct bcma_device *core,
			     enum bcma_clkmode clkmode)
{
	u16 i;

	FUNC0(core->id.id != BCMA_CORE_CHIPCOMMON &&
		core->id.id != BCMA_CORE_PCIE &&
		core->id.id != BCMA_CORE_80211);

	switch (clkmode) {
	case BCMA_CLKMODE_FAST:
		FUNC3(core, BCMA_CLKCTLST, BCMA_CLKCTLST_FORCEHT);
		FUNC5(64, 300);
		for (i = 0; i < 1500; i++) {
			if (FUNC2(core, BCMA_CLKCTLST) &
			    BCMA_CLKCTLST_HAVEHT) {
				i = 0;
				break;
			}
			FUNC4(10);
		}
		if (i)
			FUNC1(core->bus, "HT force timeout\n");
		break;
	case BCMA_CLKMODE_DYNAMIC:
		FUNC3(core, BCMA_CLKCTLST, ~BCMA_CLKCTLST_FORCEHT);
		break;
	}
}