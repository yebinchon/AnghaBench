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
typedef  int u8 ;
typedef  int u32 ;
struct powerdomain {int /*<<< orphan*/  prcm_offs; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP2_PM_PWSTCTRL ; 
 int /*<<< orphan*/  OMAP_LOGICRETSTATE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct powerdomain *pwrdm, u8 pwrst)
{
	u32 v;

	v = pwrst << FUNC0(OMAP_LOGICRETSTATE_MASK);
	FUNC1(OMAP_LOGICRETSTATE_MASK, v, pwrdm->prcm_offs,
				   OMAP2_PM_PWSTCTRL);

	return 0;
}