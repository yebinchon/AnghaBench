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
struct uml_pt_regs {int dummy; } ;
struct siginfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_IRQ ; 
 scalar_t__ TT_MODE_BASIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uml_pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ time_travel_mode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  time_travel_timer_expiry ; 

void FUNC4(int sig, struct siginfo *unused_si, struct uml_pt_regs *regs)
{
	unsigned long flags;

	/*
	 * In basic time-travel mode we still get real interrupts
	 * (signals) but since we don't read time from the OS, we
	 * must update the simulated time here to the expiry when
	 * we get a signal.
	 * This is not the case in inf-cpu mode, since there we
	 * never get any real signals from the OS.
	 */
	if (time_travel_mode == TT_MODE_BASIC)
		FUNC3(time_travel_timer_expiry);

	FUNC2(flags);
	FUNC0(TIMER_IRQ, regs);
	FUNC1(flags);
}