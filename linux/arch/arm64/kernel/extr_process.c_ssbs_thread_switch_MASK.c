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
struct task_struct {int flags; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 scalar_t__ ARM64_SSBD_FORCE_ENABLE ; 
 int PF_KTHREAD ; 
 int /*<<< orphan*/  TIF_SSBD ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 
 struct pt_regs* FUNC4 (struct task_struct*) ; 
 scalar_t__ FUNC5 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct pt_regs*) ; 

__attribute__((used)) static void FUNC8(struct task_struct *next)
{
	struct pt_regs *regs = FUNC4(next);

	/*
	 * Nothing to do for kernel threads, but 'regs' may be junk
	 * (e.g. idle task) so check the flags and bail early.
	 */
	if (FUNC6(next->flags & PF_KTHREAD))
		return;

	/* If the mitigation is enabled, then we leave SSBS clear. */
	if ((FUNC0() == ARM64_SSBD_FORCE_ENABLE) ||
	    FUNC5(next, TIF_SSBD))
		return;

	if (FUNC1(regs))
		FUNC2(regs);
	else if (FUNC7(regs))
		FUNC3(regs);
}