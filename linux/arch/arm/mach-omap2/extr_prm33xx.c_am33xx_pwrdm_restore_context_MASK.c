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
struct powerdomain {int context; int /*<<< orphan*/  pwrstctrl_offs; int /*<<< orphan*/  prcm_offs; int /*<<< orphan*/  pwrstst_offs; } ;

/* Variables and functions */
 int OMAP_POWERSTATEST_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct powerdomain*) ; 

__attribute__((used)) static void FUNC3(struct powerdomain *pwrdm)
{
	int st, ctrl;

	st = FUNC0(pwrdm->prcm_offs,
				 pwrdm->pwrstst_offs);

	FUNC1(pwrdm->context, pwrdm->prcm_offs,
			     pwrdm->pwrstctrl_offs);

	/* Make sure we only wait for a transition if there is one */
	st &= OMAP_POWERSTATEST_MASK;
	ctrl = OMAP_POWERSTATEST_MASK & pwrdm->context;

	if (st != ctrl)
		FUNC2(pwrdm);
}