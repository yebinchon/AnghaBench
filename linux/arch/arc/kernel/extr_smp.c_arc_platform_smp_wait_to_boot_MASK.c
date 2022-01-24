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
 int /*<<< orphan*/  CONFIG_ARC_SMP_HALT_ON_RESET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wake_flag ; 

void FUNC3(int cpu)
{
	/* for halt-on-reset, we've waited already */
	if (FUNC0(CONFIG_ARC_SMP_HALT_ON_RESET))
		return;

	while (FUNC1(wake_flag) != cpu)
		;

	FUNC2(wake_flag, 0);
}