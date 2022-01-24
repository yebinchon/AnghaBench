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
struct cpuidle_driver {int safe_state_index; } ;
struct cpuidle_device {int /*<<< orphan*/  cpu; struct cpuidle_coupled* coupled; } ;
struct cpuidle_coupled {int online_count; int /*<<< orphan*/  abort_barrier; scalar_t__ prevent; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct cpuidle_coupled*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuidle_coupled*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpuidle_coupled*) ; 
 int FUNC5 (struct cpuidle_device*,struct cpuidle_coupled*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpuidle_coupled*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpuidle_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct cpuidle_coupled*) ; 
 int /*<<< orphan*/  cpuidle_coupled_poked ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct cpuidle_coupled*) ; 
 int /*<<< orphan*/  FUNC10 (struct cpuidle_coupled*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct cpuidle_coupled*) ; 
 int /*<<< orphan*/  FUNC12 (struct cpuidle_coupled*) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct cpuidle_coupled*,int) ; 
 int FUNC14 (struct cpuidle_device*,struct cpuidle_driver*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 

int FUNC23(struct cpuidle_device *dev,
		struct cpuidle_driver *drv, int next_state)
{
	int entered_state = -1;
	struct cpuidle_coupled *coupled = dev->coupled;
	int w;

	if (!coupled)
		return -EINVAL;

	while (coupled->prevent) {
		FUNC2(dev->cpu);
		if (FUNC20()) {
			FUNC19();
			return entered_state;
		}
		entered_state = FUNC14(dev, drv,
			drv->safe_state_index);
		FUNC18();
	}

	/* Read barrier ensures online_count is read after prevent is cleared */
	FUNC21();

reset:
	FUNC15(dev->cpu, &cpuidle_coupled_poked);

	w = FUNC13(dev->cpu, coupled, next_state);
	/*
	 * If this is the last cpu to enter the waiting state, poke
	 * all the other cpus out of their waiting state so they can
	 * enter a deeper state.  This can race with one of the cpus
	 * exiting the waiting state due to an interrupt and
	 * decrementing waiting_count, see comment below.
	 */
	if (w == coupled->online_count) {
		FUNC16(dev->cpu, &cpuidle_coupled_poked);
		FUNC8(dev->cpu, coupled);
	}

retry:
	/*
	 * Wait for all coupled cpus to be idle, using the deepest state
	 * allowed for a single cpu.  If this was not the poking cpu, wait
	 * for at least one poke before leaving to avoid a race where
	 * two cpus could arrive at the waiting loop at the same time,
	 * but the first of the two to arrive could skip the loop without
	 * processing the pokes from the last to arrive.
	 */
	while (!FUNC4(coupled) ||
			!FUNC17(dev->cpu, &cpuidle_coupled_poked)) {
		if (FUNC2(dev->cpu))
			continue;

		if (FUNC20()) {
			FUNC11(dev->cpu, coupled);
			goto out;
		}

		if (coupled->prevent) {
			FUNC11(dev->cpu, coupled);
			goto out;
		}

		entered_state = FUNC14(dev, drv,
			drv->safe_state_index);
		FUNC18();
	}

	FUNC2(dev->cpu);
	if (FUNC20()) {
		FUNC11(dev->cpu, coupled);
		goto out;
	}

	/*
	 * Make sure final poke status for this cpu is visible before setting
	 * cpu as ready.
	 */
	FUNC22();

	/*
	 * All coupled cpus are probably idle.  There is a small chance that
	 * one of the other cpus just became active.  Increment the ready count,
	 * and spin until all coupled cpus have incremented the counter. Once a
	 * cpu has incremented the ready counter, it cannot abort idle and must
	 * spin until either all cpus have incremented the ready counter, or
	 * another cpu leaves idle and decrements the waiting counter.
	 */

	FUNC12(coupled);
	while (!FUNC3(coupled)) {
		/* Check if any other cpus bailed out of idle. */
		if (!FUNC4(coupled))
			if (!FUNC10(coupled))
				goto retry;

		FUNC0();
	}

	/*
	 * Make sure read of all cpus ready is done before reading pending pokes
	 */
	FUNC21();

	/*
	 * There is a small chance that a cpu left and reentered idle after this
	 * cpu saw that all cpus were waiting.  The cpu that reentered idle will
	 * have sent this cpu a poke, which will still be pending after the
	 * ready loop.  The pending interrupt may be lost by the interrupt
	 * controller when entering the deep idle state.  It's not possible to
	 * clear a pending interrupt without turning interrupts on and handling
	 * it, and it's too late to turn on interrupts here, so reset the
	 * coupled idle state of all cpus and retry.
	 */
	if (FUNC1(coupled)) {
		FUNC9(dev->cpu, coupled);
		/* Wait for all cpus to see the pending pokes */
		FUNC7(dev, &coupled->abort_barrier);
		goto reset;
	}

	/* all cpus have acked the coupled state */
	next_state = FUNC5(dev, coupled);

	entered_state = FUNC14(dev, drv, next_state);

	FUNC9(dev->cpu, coupled);

out:
	/*
	 * Normal cpuidle states are expected to return with irqs enabled.
	 * That leads to an inefficiency where a cpu receiving an interrupt
	 * that brings it out of idle will process that interrupt before
	 * exiting the idle enter function and decrementing ready_count.  All
	 * other cpus will need to spin waiting for the cpu that is processing
	 * the interrupt.  If the driver returns with interrupts disabled,
	 * all other cpus will loop back into the safe idle state instead of
	 * spinning, saving power.
	 *
	 * Calling local_irq_enable here allows coupled states to return with
	 * interrupts disabled, but won't cause problems for drivers that
	 * exit with interrupts enabled.
	 */
	FUNC19();

	/*
	 * Wait until all coupled cpus have exited idle.  There is no risk that
	 * a cpu exits and re-enters the ready state because this cpu has
	 * already decremented its waiting_count.
	 */
	while (!FUNC6(coupled))
		FUNC0();

	return entered_state;
}