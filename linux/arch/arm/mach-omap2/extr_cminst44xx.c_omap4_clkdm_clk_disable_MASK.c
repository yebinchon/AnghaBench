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
 int CLKDM_MISSING_IDLE_REPORTING ; 
 int /*<<< orphan*/  FUNC0 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC1 (struct clockdomain*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct clockdomain *clkdm)
{
	bool hwsup = false;

	if (!clkdm->prcm_partition)
		return 0;

	/*
	 * The CLKDM_MISSING_IDLE_REPORTING flag documentation has
	 * more details on the unpleasant problem this is working
	 * around
	 */
	if (clkdm->flags & CLKDM_MISSING_IDLE_REPORTING &&
	    !(clkdm->flags & CLKDM_CAN_FORCE_SLEEP)) {
		FUNC0(clkdm);
		return 0;
	}

	hwsup = FUNC2(clkdm->prcm_partition,
					clkdm->cm_inst, clkdm->clkdm_offs);

	if (!hwsup && (clkdm->flags & CLKDM_CAN_FORCE_SLEEP))
		FUNC1(clkdm);

	return 0;
}