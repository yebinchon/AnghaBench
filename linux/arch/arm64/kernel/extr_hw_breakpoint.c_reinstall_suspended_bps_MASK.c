#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct debug_info {scalar_t__ wps_disabled; scalar_t__ suspended_step; scalar_t__ bps_disabled; } ;
struct TYPE_4__ {struct debug_info debug; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  AARCH64_DBG_REG_BCR ; 
 int /*<<< orphan*/  AARCH64_DBG_REG_WCR ; 
 int ARM_KERNEL_STEP_NONE ; 
 int ARM_KERNEL_STEP_SUSPEND ; 
 int /*<<< orphan*/  DBG_ACTIVE_EL0 ; 
 int /*<<< orphan*/  DBG_ACTIVE_EL1 ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  stepping_kernel_bp ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (struct pt_regs*) ; 

int FUNC5(struct pt_regs *regs)
{
	struct debug_info *debug_info = &current->thread.debug;
	int handled_exception = 0, *kernel_step;

	kernel_step = FUNC1(&stepping_kernel_bp);

	/*
	 * Called from single-step exception handler.
	 * Return 0 if execution can resume, 1 if a SIGTRAP should be
	 * reported.
	 */
	if (FUNC4(regs)) {
		if (debug_info->bps_disabled) {
			debug_info->bps_disabled = 0;
			FUNC2(AARCH64_DBG_REG_BCR, DBG_ACTIVE_EL0, 1);
			handled_exception = 1;
		}

		if (debug_info->wps_disabled) {
			debug_info->wps_disabled = 0;
			FUNC2(AARCH64_DBG_REG_WCR, DBG_ACTIVE_EL0, 1);
			handled_exception = 1;
		}

		if (handled_exception) {
			if (debug_info->suspended_step) {
				debug_info->suspended_step = 0;
				/* Allow exception handling to fall-through. */
				handled_exception = 0;
			} else {
				FUNC3(current);
			}
		}
	} else if (*kernel_step != ARM_KERNEL_STEP_NONE) {
		FUNC2(AARCH64_DBG_REG_BCR, DBG_ACTIVE_EL1, 1);
		FUNC2(AARCH64_DBG_REG_WCR, DBG_ACTIVE_EL1, 1);

		if (!debug_info->wps_disabled)
			FUNC2(AARCH64_DBG_REG_WCR, DBG_ACTIVE_EL0, 1);

		if (*kernel_step != ARM_KERNEL_STEP_SUSPEND) {
			FUNC0();
			handled_exception = 1;
		} else {
			handled_exception = 0;
		}

		*kernel_step = ARM_KERNEL_STEP_NONE;
	}

	return !handled_exception;
}