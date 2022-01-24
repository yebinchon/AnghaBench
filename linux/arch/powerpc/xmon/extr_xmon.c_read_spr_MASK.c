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
 int /*<<< orphan*/  bus_error_jmp ; 
 int catch_spr_faults ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 (int,unsigned long) ; 

__attribute__((used)) static int
FUNC3(int n, unsigned long *vp)
{
	unsigned long ret = -1UL;
	int ok = 0;

	if (FUNC0(bus_error_jmp) == 0) {
		catch_spr_faults = 1;
		FUNC1();

		ret = FUNC2(n, *vp);

		FUNC1();
		*vp = ret;
		ok = 1;
	}
	catch_spr_faults = 0;

	return ok;
}