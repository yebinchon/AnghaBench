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

/* Variables and functions */
 int /*<<< orphan*/  FPEXC ; 
 int FPEXC_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void)
{
	/*
	 * If we reach this point, a floating point exception has been raised
	 * while running in kernel mode. If the NEON/VFP unit was enabled at the
	 * time, it means a VFP instruction has been issued that requires
	 * software assistance to complete, something which is not currently
	 * supported in kernel mode.
	 * If the NEON/VFP unit was disabled, and the location pointed to below
	 * is properly preceded by a call to kernel_neon_begin(), something has
	 * caused the task to be scheduled out and back in again. In this case,
	 * rebuilding and running with CONFIG_DEBUG_ATOMIC_SLEEP enabled should
	 * be helpful in localizing the problem.
	 */
	if (FUNC0(FPEXC) & FPEXC_EN)
		FUNC1("BUG: unsupported FP instruction in kernel mode\n");
	else
		FUNC1("BUG: FP instruction issued in kernel mode with FP unit disabled\n");
}