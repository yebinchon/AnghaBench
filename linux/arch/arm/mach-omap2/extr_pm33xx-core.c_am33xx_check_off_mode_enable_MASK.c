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
 scalar_t__ enable_off_mode ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static int FUNC1(void)
{
	if (enable_off_mode)
		FUNC0("WARNING: This platform does not support off-mode, entering DeepSleep suspend.\n");

	/* off mode not supported on am335x so return 0 always */
	return 0;
}