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
struct clockdomain {int context; } ;

/* Variables and functions */
#define  OMAP34XX_CLKSTCTRL_DISABLE_AUTO 131 
#define  OMAP34XX_CLKSTCTRL_ENABLE_AUTO 130 
#define  OMAP34XX_CLKSTCTRL_FORCE_SLEEP 129 
#define  OMAP34XX_CLKSTCTRL_FORCE_WAKEUP 128 
 int /*<<< orphan*/  FUNC0 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC1 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC2 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC3 (struct clockdomain*) ; 

__attribute__((used)) static int FUNC4(struct clockdomain *clkdm)
{
	switch (clkdm->context) {
	case OMAP34XX_CLKSTCTRL_DISABLE_AUTO:
		FUNC1(clkdm);
		break;
	case OMAP34XX_CLKSTCTRL_FORCE_SLEEP:
		FUNC2(clkdm);
		break;
	case OMAP34XX_CLKSTCTRL_FORCE_WAKEUP:
		FUNC3(clkdm);
		break;
	case OMAP34XX_CLKSTCTRL_ENABLE_AUTO:
		FUNC0(clkdm);
		break;
	}
	return 0;
}