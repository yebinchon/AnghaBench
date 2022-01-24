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
typedef  int u8 ;
struct powerdomain {int flags; int /*<<< orphan*/ * pwrdm_clkdms; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* pwrdm_set_lowpwrstchange ) (struct powerdomain*) ;} ;

/* Variables and functions */
#define  FORCEWAKEUP_SWITCH 129 
#define  LOWPOWERSTATE_SWITCH 128 
 int PWRDM_HAS_LOWPOWERSTATECHANGE ; 
 TYPE_1__* arch_pwrdm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct powerdomain*) ; 
 int /*<<< orphan*/  FUNC2 (struct powerdomain*) ; 

__attribute__((used)) static void FUNC3(struct powerdomain *pwrdm,
				       u8 sleep_switch)
{
	switch (sleep_switch) {
	case FORCEWAKEUP_SWITCH:
		FUNC0(pwrdm->pwrdm_clkdms[0]);
		break;
	case LOWPOWERSTATE_SWITCH:
		if (pwrdm->flags & PWRDM_HAS_LOWPOWERSTATECHANGE &&
		    arch_pwrdm->pwrdm_set_lowpwrstchange)
			arch_pwrdm->pwrdm_set_lowpwrstchange(pwrdm);
		FUNC1(pwrdm);
		break;
	}
}