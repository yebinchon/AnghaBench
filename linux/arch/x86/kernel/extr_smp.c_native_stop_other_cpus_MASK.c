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
 int /*<<< orphan*/  NMI_VECTOR ; 
 int /*<<< orphan*/  REBOOT_VECTOR ; 
 int USEC_PER_MSEC ; 
 unsigned long USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_info ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ reboot_force ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  smp_no_nmi_ipi ; 
 int /*<<< orphan*/  stopping_cpu ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(int wait)
{
	unsigned long flags;
	unsigned long timeout;

	if (reboot_force)
		return;

	/*
	 * Use an own vector here because smp_call_function
	 * does lots of things not suitable in a panic situation.
	 */

	/*
	 * We start by using the REBOOT_VECTOR irq.
	 * The irq is treated as a sync point to allow critical
	 * regions of code on other cpus to release their spin locks
	 * and re-enable irqs.  Jumping straight to an NMI might
	 * accidentally cause deadlocks with further shutdown/panic
	 * code.  By syncing, we give the cpus up to one second to
	 * finish their work before we force them off with the NMI.
	 */
	if (FUNC6() > 1) {
		/* did someone beat us here? */
		if (FUNC1(&stopping_cpu, -1, FUNC9()) != -1)
			return;

		/* sync above data before sending IRQ */
		FUNC12();

		FUNC0(REBOOT_VECTOR);

		/*
		 * Don't wait longer than a second for IPI completion. The
		 * wait request is not checked here because that would
		 * prevent an NMI shutdown attempt in case that not all
		 * CPUs reach shutdown state.
		 */
		timeout = USEC_PER_SEC;
		while (FUNC6() > 1 && timeout--)
			FUNC11(1);
	}

	/* if the REBOOT_VECTOR didn't work, try with the NMI */
	if (FUNC6() > 1) {
		/*
		 * If NMI IPI is enabled, try to register the stop handler
		 * and send the IPI. In any case try to wait for the other
		 * CPUs to stop.
		 */
		if (!smp_no_nmi_ipi && !FUNC8()) {
			/* Sync above data before sending IRQ */
			FUNC12();

			FUNC7("Shutting down cpus with NMI\n");

			FUNC0(NMI_VECTOR);
		}
		/*
		 * Don't wait longer than 10 ms if the caller didn't
		 * reqeust it. If wait is true, the machine hangs here if
		 * one or more CPUs do not reach shutdown state.
		 */
		timeout = USEC_PER_MSEC * 10;
		while (FUNC6() > 1 && (wait || timeout--))
			FUNC11(1);
	}

	FUNC4(flags);
	FUNC2();
	FUNC5(FUNC10(&cpu_info));
	FUNC3(flags);
}