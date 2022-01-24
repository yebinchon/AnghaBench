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
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 

void FUNC1(const char *fstring)
{
	unsigned long args[5];

	if (!fstring || fstring[0] == 0)
		return;
	args[0] = (unsigned long) "interpret";
	args[1] = 1;
	args[2] = 1;
	args[3] = (unsigned long) fstring;
	args[4] = (unsigned long) -1;

	FUNC0(args);
}