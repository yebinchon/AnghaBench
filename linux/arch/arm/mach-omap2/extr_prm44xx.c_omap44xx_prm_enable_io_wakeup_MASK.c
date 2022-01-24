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
typedef  scalar_t__ s32 ;
struct TYPE_2__ {int /*<<< orphan*/  pm_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP4430_GLOBAL_WUEN_MASK ; 
 scalar_t__ PRM_INSTANCE_UNKNOWN ; 
 TYPE_1__ omap4_prcm_irq_setup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static void FUNC2(void)
{
	s32 inst = FUNC1();

	if (inst == PRM_INSTANCE_UNKNOWN)
		return;

	FUNC0(OMAP4430_GLOBAL_WUEN_MASK,
				    OMAP4430_GLOBAL_WUEN_MASK,
				    inst,
				    omap4_prcm_irq_setup.pm_ctrl);
}