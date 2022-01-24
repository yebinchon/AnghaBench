#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int msr; } ;
struct TYPE_6__ {int in_nmi; } ;
struct TYPE_5__ {int /*<<< orphan*/  sreset_irqs; } ;
struct TYPE_4__ {scalar_t__ (* system_reset_exception ) (struct pt_regs*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 int /*<<< orphan*/  KMSG_DUMP_OOPS ; 
 int /*<<< orphan*/  LOCKDEP_NOW_UNRELIABLE ; 
 int MSEC_PER_SEC ; 
 int MSR_RI ; 
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SPRN_HSRR0 ; 
 int /*<<< orphan*/  SPRN_HSRR1 ; 
 int /*<<< orphan*/  TAINT_DIE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*) ; 
 scalar_t__ FUNC7 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct pt_regs*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct pt_regs*) ; 
 int FUNC11 () ; 
 TYPE_2__ irq_stat ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 unsigned long FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct pt_regs*,char*) ; 
 TYPE_1__ ppc_md ; 
 scalar_t__ FUNC19 (struct pt_regs*) ; 

void FUNC20(struct pt_regs *regs)
{
	unsigned long hsrr0, hsrr1;
	bool nested = FUNC11();
	bool saved_hsrrs = false;

	/*
	 * Avoid crashes in case of nested NMI exceptions. Recoverability
	 * is determined by RI and in_nmi
	 */
	if (!nested)
		FUNC16();

	/*
	 * System reset can interrupt code where HSRRs are live and MSR[RI]=1.
	 * The system reset interrupt itself may clobber HSRRs (e.g., to call
	 * OPAL), so save them here and restore them before returning.
	 *
	 * Machine checks don't need to save HSRRs, as the real mode handler
	 * is careful to avoid them, and the regular handler is not delivered
	 * as an NMI.
	 */
	if (FUNC3(CPU_FTR_HVMODE)) {
		hsrr0 = FUNC14(SPRN_HSRR0);
		hsrr1 = FUNC14(SPRN_HSRR1);
		saved_hsrrs = true;
	}

	FUNC10(regs);

	FUNC1(irq_stat.sreset_irqs);

	/* See if any machine dependent calls */
	if (ppc_md.system_reset_exception) {
		if (ppc_md.system_reset_exception(regs))
			goto out;
	}

	if (FUNC7(regs))
		goto out;

	FUNC12(KMSG_DUMP_OOPS);
	/*
	 * A system reset is a request to dump, so we always send
	 * it through the crashdump code (if fadump or kdump are
	 * registered).
	 */
	FUNC4(regs, "System Reset");

	FUNC5(regs);

	/*
	 * We aren't the primary crash CPU. We need to send it
	 * to a holding pattern to avoid it ending up in the panic
	 * code.
	 */
	FUNC6(regs);

	/*
	 * No debugger or crash dump registered, print logs then
	 * panic.
	 */
	FUNC8("System Reset", regs, SIGABRT);

	FUNC13(2*MSEC_PER_SEC); /* Wait a little while for others to print */
	FUNC2(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
	FUNC18(regs, "System Reset");

out:
#ifdef CONFIG_PPC_BOOK3S_64
	BUG_ON(get_paca()->in_nmi == 0);
	if (get_paca()->in_nmi > 1)
		nmi_panic(regs, "Unrecoverable nested System Reset");
#endif
	/* Must die if the interrupt is not recoverable */
	if (!(regs->msr & MSR_RI))
		FUNC18(regs, "Unrecoverable System Reset");

	if (saved_hsrrs) {
		FUNC15(SPRN_HSRR0, hsrr0);
		FUNC15(SPRN_HSRR1, hsrr1);
	}

	if (!nested)
		FUNC17();

	/* What should we do here? We could issue a shutdown or hard reset. */
}