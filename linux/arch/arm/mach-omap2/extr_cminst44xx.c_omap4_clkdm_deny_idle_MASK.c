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
struct clockdomain {int flags; int /*<<< orphan*/  clkdm_offs; int /*<<< orphan*/  cm_inst; int /*<<< orphan*/  prcm_partition; } ;

/* Variables and functions */
 int CLKDM_CAN_FORCE_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct clockdomain *clkdm)
{
	if (clkdm->flags & CLKDM_CAN_FORCE_WAKEUP)
		FUNC0(clkdm);
	else
		FUNC1(clkdm->prcm_partition,
						 clkdm->cm_inst,
						 clkdm->clkdm_offs);
}