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
 unsigned long FUNC0 () ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  xen_cr0_value ; 

__attribute__((used)) static unsigned long FUNC4(void)
{
	unsigned long cr0 = FUNC1(xen_cr0_value);

	if (FUNC3(cr0 == 0)) {
		cr0 = FUNC0();
		FUNC2(xen_cr0_value, cr0);
	}

	return cr0;
}