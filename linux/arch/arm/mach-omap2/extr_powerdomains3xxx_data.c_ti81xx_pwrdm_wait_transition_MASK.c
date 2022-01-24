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
struct powerdomain {scalar_t__ prcm_offs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EAGAIN ; 
 int OMAP_INTRANSITION_MASK ; 
 scalar_t__ PWRDM_TRANSITION_BAILOUT ; 
 scalar_t__ TI814X_PRM_GFX_MOD ; 
 int /*<<< orphan*/  TI81XX_PM_PWSTST ; 
 int /*<<< orphan*/  TI81XX_RM_RSTCTRL ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct powerdomain *pwrdm)
{
	u32 c = 0;

	while ((FUNC0(pwrdm->prcm_offs,
		(pwrdm->prcm_offs == TI814X_PRM_GFX_MOD) ? TI81XX_RM_RSTCTRL :
				       TI81XX_PM_PWSTST) &
		OMAP_INTRANSITION_MASK) &&
		(c++ < PWRDM_TRANSITION_BAILOUT))
			FUNC3(1);

	if (c > PWRDM_TRANSITION_BAILOUT) {
		FUNC2("powerdomain: %s timeout waiting for transition\n",
		       pwrdm->name);
		return -EAGAIN;
	}

	FUNC1("powerdomain: completed transition in %d loops\n", c);

	return 0;
}