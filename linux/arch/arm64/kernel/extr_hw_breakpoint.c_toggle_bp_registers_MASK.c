#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct perf_event {int dummy; } ;
typedef  enum dbg_active_el { ____Placeholder_dbg_active_el } dbg_active_el ;
struct TYPE_3__ {int privilege; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;

/* Variables and functions */
#define  AARCH64_DBG_REG_BCR 129 
#define  AARCH64_DBG_REG_WCR 128 
 int /*<<< orphan*/  bp_on_reg ; 
 int core_num_brps ; 
 int core_num_wrps ; 
 TYPE_2__* FUNC0 (struct perf_event*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 struct perf_event** FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wp_on_reg ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 

__attribute__((used)) static void FUNC5(int reg, enum dbg_active_el el, int enable)
{
	int i, max_slots, privilege;
	u32 ctrl;
	struct perf_event **slots;

	switch (reg) {
	case AARCH64_DBG_REG_BCR:
		slots = FUNC3(bp_on_reg);
		max_slots = core_num_brps;
		break;
	case AARCH64_DBG_REG_WCR:
		slots = FUNC3(wp_on_reg);
		max_slots = core_num_wrps;
		break;
	default:
		return;
	}

	for (i = 0; i < max_slots; ++i) {
		if (!slots[i])
			continue;

		privilege = FUNC0(slots[i])->ctrl.privilege;
		if (FUNC1(privilege) != el)
			continue;

		ctrl = FUNC2(reg, i);
		if (enable)
			ctrl |= 0x1;
		else
			ctrl &= ~0x1;
		FUNC4(reg, i, ctrl);
	}
}