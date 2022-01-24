#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int suspend_state_t ;
struct TYPE_3__ {int /*<<< orphan*/  mode; } ;
struct TYPE_4__ {TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PM_ULP0 ; 
#define  PM_SUSPEND_MEM 130 
#define  PM_SUSPEND_ON 129 
#define  PM_SUSPEND_STANDBY 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 TYPE_2__ soc_pm ; 

__attribute__((used)) static int FUNC6(suspend_state_t state)
{
#ifdef CONFIG_PINCTRL_AT91
	at91_pinctrl_gpio_suspend();
#endif

	switch (state) {
	case PM_SUSPEND_MEM:
	case PM_SUSPEND_STANDBY:
		/*
		 * Ensure that clocks are in a valid state.
		 */
		if (soc_pm.data.mode >= AT91_PM_ULP0 &&
		    !FUNC3())
			goto error;

		FUNC2(state);

		break;

	case PM_SUSPEND_ON:
		FUNC4();
		break;

	default:
		FUNC5("AT91: PM - bogus suspend state %d\n", state);
		goto error;
	}

error:
#ifdef CONFIG_PINCTRL_AT91
	at91_pinctrl_gpio_resume();
#endif
	return 0;
}