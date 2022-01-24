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
struct clockdomain {int dummy; } ;
struct clkdm_dep {scalar_t__ clkdm_name; struct clockdomain* clkdm; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 struct clkdm_dep* FUNC0 (int /*<<< orphan*/ ) ; 
 struct clockdomain* FUNC1 (scalar_t__) ; 

__attribute__((used)) static struct clkdm_dep *FUNC2(struct clockdomain *clkdm,
					    struct clkdm_dep *deps)
{
	struct clkdm_dep *cd;

	if (!clkdm || !deps)
		return FUNC0(-EINVAL);

	for (cd = deps; cd->clkdm_name; cd++) {
		if (!cd->clkdm && cd->clkdm_name)
			cd->clkdm = FUNC1(cd->clkdm_name);

		if (cd->clkdm == clkdm)
			break;
	}

	if (!cd->clkdm_name)
		return FUNC0(-ENOENT);

	return cd;
}