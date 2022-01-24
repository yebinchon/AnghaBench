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
typedef  scalar_t__ suspend_state_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PM_SUSPEND_MEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tango_pm_powerdown ; 

__attribute__((used)) static int FUNC1(suspend_state_t state)
{
	if (state == PM_SUSPEND_MEM)
		return FUNC0(0, tango_pm_powerdown);

	return -EINVAL;
}