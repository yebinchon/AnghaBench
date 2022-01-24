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
 int CLKDM_CAN_FORCE_SLEEP ; 
 int CLKDM_CAN_HWSUP ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clockdomain *clkdm)
{
	if (clkdm->flags & CLKDM_CAN_HWSUP)
		FUNC0(clkdm->prcm_partition,
						clkdm->cm_inst,
						clkdm->clkdm_offs);
	else if (clkdm->flags & CLKDM_CAN_FORCE_SLEEP)
		FUNC1(clkdm->prcm_partition,
					       clkdm->cm_inst,
					       clkdm->clkdm_offs);
	else
		return -EINVAL;

	return 0;
}