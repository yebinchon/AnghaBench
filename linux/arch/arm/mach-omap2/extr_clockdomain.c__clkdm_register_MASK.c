#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct powerdomain {int dummy; } ;
struct TYPE_2__ {struct powerdomain* ptr; int /*<<< orphan*/  name; } ;
struct clockdomain {int /*<<< orphan*/  name; int /*<<< orphan*/  node; TYPE_1__ pwrdm; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clkdm_list ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct powerdomain*,struct clockdomain*) ; 
 struct powerdomain* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clockdomain *clkdm)
{
	struct powerdomain *pwrdm;

	if (!clkdm || !clkdm->name)
		return -EINVAL;

	pwrdm = FUNC5(clkdm->pwrdm.name);
	if (!pwrdm) {
		FUNC3("clockdomain: %s: powerdomain %s does not exist\n",
			clkdm->name, clkdm->pwrdm.name);
		return -EINVAL;
	}
	clkdm->pwrdm.ptr = pwrdm;

	/* Verify that the clockdomain is not already registered */
	if (FUNC0(clkdm->name))
		return -EEXIST;

	FUNC1(&clkdm->node, &clkdm_list);

	FUNC4(pwrdm, clkdm);

	FUNC2("clockdomain: registered %s\n", clkdm->name);

	return 0;
}