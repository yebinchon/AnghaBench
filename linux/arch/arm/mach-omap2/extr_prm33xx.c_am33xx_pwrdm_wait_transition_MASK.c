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
typedef  scalar_t__ u32 ;
struct powerdomain {int /*<<< orphan*/  name; int /*<<< orphan*/  pwrstst_offs; int /*<<< orphan*/  prcm_offs; } ;

/* Variables and functions */
 int EAGAIN ; 
 int OMAP_INTRANSITION_MASK ; 
 scalar_t__ PWRDM_TRANSITION_BAILOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct powerdomain *pwrdm)
{
	u32 c = 0;

	/*
	 * REVISIT: pwrdm_wait_transition() may be better implemented
	 * via a callback and a periodic timer check -- how long do we expect
	 * powerdomain transitions to take?
	 */

	/* XXX Is this udelay() value meaningful? */
	while ((FUNC0(pwrdm->prcm_offs, pwrdm->pwrstst_offs)
			& OMAP_INTRANSITION_MASK) &&
			(c++ < PWRDM_TRANSITION_BAILOUT))
		FUNC3(1);

	if (c > PWRDM_TRANSITION_BAILOUT) {
		FUNC2("powerdomain: %s: waited too long to complete transition\n",
		       pwrdm->name);
		return -EAGAIN;
	}

	FUNC1("powerdomain: completed transition in %d loops\n", c);

	return 0;
}