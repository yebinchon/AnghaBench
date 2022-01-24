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
struct device_node {int dummy; } ;
struct TYPE_2__ {int board_flags; } ;

/* Variables and functions */
 long EPERM ; 
 int PMAC_MB_CAN_SLEEP ; 
 int /*<<< orphan*/  UNI_N_HWINIT_STATE ; 
 int /*<<< orphan*/  UNI_N_HWINIT_STATE_RUNNING ; 
 int /*<<< orphan*/  UNI_N_HWINIT_STATE_SLEEPING ; 
 int /*<<< orphan*/  UNI_N_POWER_MGT ; 
 int /*<<< orphan*/  UNI_N_POWER_MGT_IDLE2 ; 
 int /*<<< orphan*/  UNI_N_POWER_MGT_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC1 () ; 
 long FUNC2 () ; 
 TYPE_1__ pmac_mb ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static long
FUNC4(struct device_node *node, long param, long value)
{
	/* Param == 1 means to enter the "fake sleep" mode that is
	 * used for CPU speed switch
	 */
	if (param == 1) {
		if (value == 1) {
			FUNC0(UNI_N_HWINIT_STATE, UNI_N_HWINIT_STATE_SLEEPING);
			FUNC0(UNI_N_POWER_MGT, UNI_N_POWER_MGT_IDLE2);
		} else {
			FUNC0(UNI_N_POWER_MGT, UNI_N_POWER_MGT_NORMAL);
			FUNC3(10);
			FUNC0(UNI_N_HWINIT_STATE, UNI_N_HWINIT_STATE_RUNNING);
			FUNC3(10);
		}
		return 0;
	}
	if ((pmac_mb.board_flags & PMAC_MB_CAN_SLEEP) == 0)
		return -EPERM;

#ifdef CONFIG_PM
	if (value == 1)
		return core99_sleep();
	else if (value == 0)
		return core99_wake_up();

#endif /* CONFIG_PM */
	return 0;
}