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
typedef  int u64 ;
struct pt_regs {int dummy; } ;
struct clock_event_device {int /*<<< orphan*/  (* event_handler ) (struct clock_event_device*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  timer_irqs_others; int /*<<< orphan*/  timer_irqs_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PPC_WATCHDOG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int decrementer_max ; 
 int /*<<< orphan*/  decrementers ; 
 int /*<<< orphan*/  decrementers_next_tb ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__ irq_stat ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  ppc_n_lost_interrupts ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct pt_regs* FUNC12 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct clock_event_device*) ; 
 scalar_t__ FUNC15 () ; 
 void* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC18 (struct pt_regs*) ; 
 scalar_t__ FUNC19 (int) ; 

void FUNC20(struct pt_regs *regs)
{
	struct clock_event_device *evt = FUNC16(&decrementers);
	u64 *next_tb = FUNC16(&decrementers_next_tb);
	struct pt_regs *old_regs;
	u64 now;

	/* Some implementations of hotplug will get timer interrupts while
	 * offline, just ignore these and we also need to set
	 * decrementers_next_tb as MAX to make sure __check_irq_replay
	 * don't replay timer interrupt when return, otherwise we'll trap
	 * here infinitely :(
	 */
	if (FUNC19(!FUNC4(FUNC13()))) {
		*next_tb = ~(u64)0;
		FUNC11(decrementer_max);
		return;
	}

	/* Ensure a positive value is written to the decrementer, or else
	 * some CPUs will continue to take decrementer exceptions. When the
	 * PPC_WATCHDOG (decrementer based) is configured, keep this at most
	 * 31 bits, which is about 4 seconds on most systems, which gives
	 * the watchdog a chance of catching timer interrupt hard lockups.
	 */
	if (FUNC0(CONFIG_PPC_WATCHDOG))
		FUNC11(0x7fffffff);
	else
		FUNC11(decrementer_max);

	/* Conditionally hard-enable interrupts now that the DEC has been
	 * bumped to its maximum value
	 */
	FUNC10();


#if defined(CONFIG_PPC32) && defined(CONFIG_PPC_PMAC)
	if (atomic_read(&ppc_n_lost_interrupts) != 0)
		do_IRQ(regs);
#endif

	old_regs = FUNC12(regs);
	FUNC7();
	FUNC17(regs);

	if (FUNC15()) {
		FUNC3();
		FUNC9();
	}

	now = FUNC6();
	if (now >= *next_tb) {
		*next_tb = ~(u64)0;
		if (evt->event_handler)
			evt->event_handler(evt);
		FUNC1(irq_stat.timer_irqs_event);
	} else {
		now = *next_tb - now;
		if (now <= decrementer_max)
			FUNC11(now);
		/* We may have raced with new irq work */
		if (FUNC15())
			FUNC11(1);
		FUNC1(irq_stat.timer_irqs_others);
	}

	FUNC18(regs);
	FUNC8();
	FUNC12(old_regs);
}