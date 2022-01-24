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
 int /*<<< orphan*/  FUNC1 (char const*) ; 

void FUNC2(void)
{
	const char *svc = "SUNW,soft-state-supported";
	unsigned long args[3];

	if (!FUNC1(svc))
		return;
	args[0] = (unsigned long) svc;
	args[1] = 0;
	args[2] = 0;
	FUNC0(args);
}