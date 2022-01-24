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
 int EAGAIN ; 
 scalar_t__ TZIC_DSMINT ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 scalar_t__ tzic_base ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(void)
{
	unsigned int i;

	FUNC3(1, tzic_base + TZIC_DSMINT);
	if (FUNC4(FUNC2(tzic_base + TZIC_DSMINT) == 0))
		return -EAGAIN;

	for (i = 0; i < 4; i++)
		FUNC3(FUNC2(tzic_base + FUNC0(i)),
			   tzic_base + FUNC1(i));

	return 0;
}