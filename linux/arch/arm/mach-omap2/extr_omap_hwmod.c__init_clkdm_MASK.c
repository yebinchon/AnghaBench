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
struct omap_hwmod {int /*<<< orphan*/  clkdm_name; int /*<<< orphan*/  name; int /*<<< orphan*/  clkdm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct omap_hwmod *oh)
{
	if (!oh->clkdm_name) {
		FUNC1("omap_hwmod: %s: missing clockdomain\n", oh->name);
		return 0;
	}

	oh->clkdm = FUNC0(oh->clkdm_name);
	if (!oh->clkdm) {
		FUNC2("omap_hwmod: %s: could not associate to clkdm %s\n",
			oh->name, oh->clkdm_name);
		return 0;
	}

	FUNC1("omap_hwmod: %s: associated to clkdm %s\n",
		oh->name, oh->clkdm_name);

	return 0;
}