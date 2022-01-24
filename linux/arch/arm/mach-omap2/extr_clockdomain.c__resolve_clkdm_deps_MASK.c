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
struct clockdomain {int /*<<< orphan*/  name; } ;
struct clkdm_dep {scalar_t__ clkdm_name; scalar_t__ clkdm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct clockdomain *clkdm,
				struct clkdm_dep *clkdm_deps)
{
	struct clkdm_dep *cd;

	for (cd = clkdm_deps; cd && cd->clkdm_name; cd++) {
		if (cd->clkdm)
			continue;
		cd->clkdm = FUNC1(cd->clkdm_name);

		FUNC0(!cd->clkdm, "clockdomain: %s: could not find clkdm %s while resolving dependencies - should never happen",
		     clkdm->name, cd->clkdm_name);
	}
}