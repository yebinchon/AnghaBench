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
 long FUNC0 (int*) ; 
 scalar_t__ FUNC1 () ; 

long FUNC2(void)
{
	long ret = 0;
	long rc;
	bool again;

	if (FUNC1())
		return 1;

	do {
		again = false;
		rc = FUNC0(&again);
		if (rc && (ret == 0 || rc > ret))
			ret = rc;
	} while (again);
	return ret;
}