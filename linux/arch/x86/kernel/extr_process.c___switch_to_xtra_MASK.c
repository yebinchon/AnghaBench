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
struct thread_struct {int dummy; } ;
struct task_struct {struct thread_struct thread; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 unsigned long DEBUGCTLMSR_BTF ; 
 unsigned long DEBUGCTLMSR_BTF_SHIFT ; 
 int /*<<< orphan*/  MSR_IA32_DEBUGCTLMSR ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long TIF_BLOCKSTEP ; 
 int /*<<< orphan*/  X86_CR4_TSD ; 
 unsigned long _TIF_BLOCKSTEP ; 
 unsigned long _TIF_NOCPUID ; 
 unsigned long _TIF_NOTSC ; 
 unsigned long _TIF_SPEC_FORCE_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 unsigned long FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct thread_struct*,struct thread_struct*,unsigned long,unsigned long) ; 
 TYPE_1__* FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC12(struct task_struct *prev_p, struct task_struct *next_p)
{
	struct thread_struct *prev, *next;
	unsigned long tifp, tifn;

	prev = &prev_p->thread;
	next = &next_p->thread;

	tifn = FUNC0(FUNC10(next_p)->flags);
	tifp = FUNC0(FUNC10(prev_p)->flags);
	FUNC9(prev, next, tifp, tifn);

	FUNC5(prev_p, next_p);

	if ((tifp & _TIF_BLOCKSTEP || tifn & _TIF_BLOCKSTEP) &&
	    FUNC2()) {
		unsigned long debugctl, msk;

		FUNC6(MSR_IA32_DEBUGCTLMSR, debugctl);
		debugctl &= ~DEBUGCTLMSR_BTF;
		msk = tifn & _TIF_BLOCKSTEP;
		debugctl |= (msk >> TIF_BLOCKSTEP) << DEBUGCTLMSR_BTF_SHIFT;
		FUNC11(MSR_IA32_DEBUGCTLMSR, debugctl);
	}

	if ((tifp ^ tifn) & _TIF_NOTSC)
		FUNC3(X86_CR4_TSD);

	if ((tifp ^ tifn) & _TIF_NOCPUID)
		FUNC7(!!(tifn & _TIF_NOCPUID));

	if (FUNC4(!((tifp | tifn) & _TIF_SPEC_FORCE_UPDATE))) {
		FUNC1(tifp, tifn);
	} else {
		FUNC8(prev_p);
		tifn = FUNC8(next_p);

		/* Enforce MSR update to ensure consistent state */
		FUNC1(~tifn, tifn);
	}
}