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
typedef  int /*<<< orphan*/  irq_handler_t ;
struct TYPE_2__ {int t1_cntrl; int t1_int_cntrl; int /*<<< orphan*/  t1_preload; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_TIMER ; 
 int PCC_INT_ENAB ; 
 int /*<<< orphan*/  PCC_IRQ_TIMER1 ; 
 int PCC_LEVEL_TIMER1 ; 
 int /*<<< orphan*/  PCC_TIMER_CLOCK_FREQ ; 
 int PCC_TIMER_INT_CLR ; 
 int /*<<< orphan*/  PCC_TIMER_PRELOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* m147_pcc ; 
 int /*<<< orphan*/  mvme147_clk ; 
 int /*<<< orphan*/  mvme147_timer_int ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC3 (irq_handler_t timer_routine)
{
	if (FUNC2(PCC_IRQ_TIMER1, mvme147_timer_int, IRQF_TIMER,
			"timer 1", timer_routine))
		FUNC1("Couldn't register timer interrupt\n");

	/* Init the clock with a value */
	/* The clock counter increments until 0xFFFF then reloads */
	m147_pcc->t1_preload = PCC_TIMER_PRELOAD;
	m147_pcc->t1_cntrl = 0x0;	/* clear timer */
	m147_pcc->t1_cntrl = 0x3;	/* start timer */
	m147_pcc->t1_int_cntrl = PCC_TIMER_INT_CLR;  /* clear pending ints */
	m147_pcc->t1_int_cntrl = PCC_INT_ENAB|PCC_LEVEL_TIMER1;

	FUNC0(&mvme147_clk, PCC_TIMER_CLOCK_FREQ);
}