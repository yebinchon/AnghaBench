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
struct perf_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AARCH64_DBG_REG_BCR ; 
 int /*<<< orphan*/  AARCH64_DBG_REG_BVR ; 
 int /*<<< orphan*/  AARCH64_DBG_REG_WCR ; 
 int /*<<< orphan*/  AARCH64_DBG_REG_WVR ; 
 int /*<<< orphan*/  HW_BREAKPOINT_RESTORE ; 
 int /*<<< orphan*/  bp_on_reg ; 
 int core_num_brps ; 
 int core_num_wrps ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*,int /*<<< orphan*/ ) ; 
 struct perf_event** FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wp_on_reg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static int FUNC3(unsigned int cpu)
{
	int i;
	struct perf_event **slots;
	/*
	 * When a CPU goes through cold-boot, it does not have any installed
	 * slot, so it is safe to share the same function for restoring and
	 * resetting breakpoints; when a CPU is hotplugged in, it goes
	 * through the slots, which are all empty, hence it just resets control
	 * and value for debug registers.
	 * When this function is triggered on warm-boot through a CPU PM
	 * notifier some slots might be initialized; if so they are
	 * reprogrammed according to the debug slots content.
	 */
	for (slots = FUNC1(bp_on_reg), i = 0; i < core_num_brps; ++i) {
		if (slots[i]) {
			FUNC0(slots[i], HW_BREAKPOINT_RESTORE);
		} else {
			FUNC2(AARCH64_DBG_REG_BCR, i, 0UL);
			FUNC2(AARCH64_DBG_REG_BVR, i, 0UL);
		}
	}

	for (slots = FUNC1(wp_on_reg), i = 0; i < core_num_wrps; ++i) {
		if (slots[i]) {
			FUNC0(slots[i], HW_BREAKPOINT_RESTORE);
		} else {
			FUNC2(AARCH64_DBG_REG_WCR, i, 0UL);
			FUNC2(AARCH64_DBG_REG_WVR, i, 0UL);
		}
	}

	return 0;
}