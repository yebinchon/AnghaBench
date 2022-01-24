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
typedef  int /*<<< orphan*/  suspend_state_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  lite5200_pm_target_state ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(suspend_state_t state)
{
	if (FUNC0(state)) {
		lite5200_pm_target_state = state;
		return 0;
	}
	return -EINVAL;
}