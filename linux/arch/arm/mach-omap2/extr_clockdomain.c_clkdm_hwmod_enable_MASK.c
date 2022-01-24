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
struct omap_hwmod {int dummy; } ;
struct clockdomain {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct clockdomain*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

int FUNC3(struct clockdomain *clkdm, struct omap_hwmod *oh)
{
	/* The clkdm attribute does not exist yet prior OMAP4 */
	if (FUNC1() || FUNC2())
		return 0;

	/*
	 * XXX Rewrite this code to maintain a list of enabled
	 * downstream hwmods for debugging purposes?
	 */

	if (!oh)
		return -EINVAL;

	return FUNC0(clkdm);
}