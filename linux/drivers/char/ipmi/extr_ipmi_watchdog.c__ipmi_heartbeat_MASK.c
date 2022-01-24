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

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IPMI_SET_TIMEOUT_FORCE_HB ; 
 int /*<<< orphan*/  IPMI_SET_TIMEOUT_HB_IF_NECESSARY ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  action_val ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ ipmi_start_timer_on_heartbeat ; 
 int /*<<< orphan*/  ipmi_watchdog_state ; 
 int /*<<< orphan*/  pretimeout_since_last_heartbeat ; 
 int /*<<< orphan*/  watchdog_user ; 

__attribute__((used)) static int FUNC3(void)
{
	int rv;

	if (!watchdog_user)
		return -ENODEV;

	if (ipmi_start_timer_on_heartbeat) {
		ipmi_start_timer_on_heartbeat = 0;
		ipmi_watchdog_state = action_val;
		rv = FUNC1(IPMI_SET_TIMEOUT_FORCE_HB);
	} else if (FUNC2(&pretimeout_since_last_heartbeat, 1, 0)) {
		/*
		 * A pretimeout occurred, make sure we set the timeout.
		 * We don't want to set the action, though, we want to
		 * leave that alone (thus it can't be combined with the
		 * above operation.
		 */
		rv = FUNC1(IPMI_SET_TIMEOUT_HB_IF_NECESSARY);
	} else {
		rv = FUNC0();
	}

	return rv;
}