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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  gfx_l4ls_clkdm ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret;

	gfx_l4ls_clkdm = FUNC1("gfx_l4ls_gfx_clkdm");

	if (!gfx_l4ls_clkdm) {
		FUNC2("PM: Cannot lookup gfx_l4ls_clkdm clockdomains\n");
		return -ENODEV;
	}

	ret = FUNC0();

	return ret;
}