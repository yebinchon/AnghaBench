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
 int EINVAL ; 
 int /*<<< orphan*/  WDOG_TIMEOUT_NONE ; 
 int /*<<< orphan*/  WDOG_TIMEOUT_POWER_CYCLE ; 
 int /*<<< orphan*/  WDOG_TIMEOUT_POWER_DOWN ; 
 int /*<<< orphan*/  WDOG_TIMEOUT_RESET ; 
 char* action ; 
 int /*<<< orphan*/  action_val ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static int FUNC2(const char *inval, char *outval)
{
	if (outval)
		FUNC1(outval, action);

	if (!inval)
		return 0;

	if (FUNC0(inval, "reset") == 0)
		action_val = WDOG_TIMEOUT_RESET;
	else if (FUNC0(inval, "none") == 0)
		action_val = WDOG_TIMEOUT_NONE;
	else if (FUNC0(inval, "power_cycle") == 0)
		action_val = WDOG_TIMEOUT_POWER_CYCLE;
	else if (FUNC0(inval, "power_off") == 0)
		action_val = WDOG_TIMEOUT_POWER_DOWN;
	else
		return -EINVAL;
	FUNC1(action, inval);
	return 0;
}