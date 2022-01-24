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
struct TYPE_4__ {TYPE_1__* regs; } ;
struct task_struct {TYPE_2__ thread; } ;
struct TYPE_3__ {unsigned long msr; } ;

/* Variables and functions */
 unsigned long MSR_FP ; 
 unsigned long MSR_SPE ; 
 unsigned long MSR_VEC ; 
 unsigned long MSR_VSX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 unsigned long msr_all_available ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

void FUNC7(struct task_struct *tsk)
{
	unsigned long usermsr;

	if (!tsk->thread.regs)
		return;

	FUNC4(tsk);

	usermsr = tsk->thread.regs->msr;

	if ((usermsr & msr_all_available) == 0)
		return;

	FUNC6(msr_all_available);

	FUNC0((usermsr & MSR_VSX) && !((usermsr & MSR_FP) && (usermsr & MSR_VEC)));

#ifdef CONFIG_PPC_FPU
	if (usermsr & MSR_FP)
		__giveup_fpu(tsk);
#endif
#ifdef CONFIG_ALTIVEC
	if (usermsr & MSR_VEC)
		__giveup_altivec(tsk);
#endif
#ifdef CONFIG_SPE
	if (usermsr & MSR_SPE)
		__giveup_spe(tsk);
#endif

	FUNC5(msr_all_available);
}