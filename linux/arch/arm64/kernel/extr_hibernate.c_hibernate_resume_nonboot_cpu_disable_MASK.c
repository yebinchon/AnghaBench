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
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ sleep_cpu ; 

int FUNC2(void)
{
	if (sleep_cpu < 0) {
		FUNC1("Failing to resume from hibernate on an unknown CPU.\n");
		return -ENODEV;
	}

	return FUNC0(sleep_cpu);
}