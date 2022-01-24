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
struct pt_regs {int /*<<< orphan*/  sp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NMI_EXECUTING ; 
 int NMI_LATCHED ; 
 scalar_t__ NMI_NOT_RUNNING ; 
 int /*<<< orphan*/  __nmi_count ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 
 int /*<<< orphan*/  ignore_nmis ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  nmi_cr2 ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  nmi_state ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  update_debug_stack ; 
 scalar_t__ FUNC16 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 

void
FUNC18(struct pt_regs *regs, long error_code)
{
	if (FUNC0(CONFIG_SMP) && FUNC1(FUNC11()))
		return;

	if (FUNC13(nmi_state) != NMI_NOT_RUNNING) {
		FUNC14(nmi_state, NMI_LATCHED);
		return;
	}
	FUNC14(nmi_state, NMI_EXECUTING);
	FUNC14(nmi_cr2, FUNC10());
nmi_restart:

#ifdef CONFIG_X86_64
	/*
	 * If we interrupted a breakpoint, it is possible that
	 * the nmi handler will have breakpoints too. We need to
	 * change the IDT such that breakpoints that happen here
	 * continue to use the NMI stack.
	 */
	if (unlikely(is_debug_stack(regs->sp))) {
		debug_stack_set_zero();
		this_cpu_write(update_debug_stack, 1);
	}
#endif

	FUNC8();

	FUNC5(__nmi_count);

	if (!ignore_nmis)
		FUNC4(regs);

	FUNC9();

#ifdef CONFIG_X86_64
	if (unlikely(this_cpu_read(update_debug_stack))) {
		debug_stack_reset();
		this_cpu_write(update_debug_stack, 0);
	}
#endif

	if (FUNC15(FUNC13(nmi_cr2) != FUNC10()))
		FUNC17(FUNC13(nmi_cr2));
	if (FUNC12(nmi_state))
		goto nmi_restart;

	if (FUNC16(regs))
		FUNC7();
}