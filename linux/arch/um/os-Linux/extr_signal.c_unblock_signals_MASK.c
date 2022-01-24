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
 int SIGALRM_MASK ; 
 int /*<<< orphan*/  SIGIO ; 
 int SIGIO_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int signals_active ; 
 int signals_enabled ; 
 int signals_pending ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	int save_pending;

	if (signals_enabled == 1)
		return;

	signals_enabled = 1;

	/*
	 * We loop because the IRQ handler returns with interrupts off.  So,
	 * interrupts may have arrived and we need to re-enable them and
	 * recheck signals_pending.
	 */
	while (1) {
		/*
		 * Save and reset save_pending after enabling signals.  This
		 * way, signals_pending won't be changed while we're reading it.
		 *
		 * Setting signals_enabled and reading signals_pending must
		 * happen in this order, so have the barrier here.
		 */
		FUNC0();

		save_pending = signals_pending;
		if (save_pending == 0)
			return;

		signals_pending = 0;

		/*
		 * We have pending interrupts, so disable signals, as the
		 * handlers expect them off when they are called.  They will
		 * be enabled again above. We need to trace this, as we're
		 * expected to be enabling interrupts already, but any more
		 * tracing that happens inside the handlers we call for the
		 * pending signals will mess up the tracing state.
		 */
		signals_enabled = 0;
		FUNC3();

		/*
		 * Deal with SIGIO first because the alarm handler might
		 * schedule, leaving the pending SIGIO stranded until we come
		 * back here.
		 *
		 * SIGIO's handler doesn't use siginfo or mcontext,
		 * so they can be NULL.
		 */
		if (save_pending & SIGIO_MASK)
			FUNC1(SIGIO, NULL, NULL);

		/* Do not reenter the handler */

		if ((save_pending & SIGALRM_MASK) && (!(signals_active & SIGALRM_MASK)))
			FUNC2(NULL);

		/* Rerun the loop only if there is still pending SIGIO and not in TIMER handler */

		if (!(signals_pending & SIGIO_MASK) && (signals_active & SIGALRM_MASK))
			return;

		/* Re-enable signals and trace that we're doing so. */
		FUNC4();
		signals_enabled = 1;
	}
}