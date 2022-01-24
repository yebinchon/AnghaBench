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
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FRAME_CLEAR_REG ; 
 int /*<<< orphan*/  FRAME_RATE_REG ; 
 int Q40_IRQ_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  q40_timer_int ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC3 (irq_handler_t timer_routine)
{
	int timer_irq;

	timer_irq = Q40_IRQ_FRAME;

	if (FUNC2(timer_irq, q40_timer_int, 0, "timer", timer_routine))
		FUNC1("Couldn't register timer int");

	FUNC0(-1, FRAME_CLEAR_REG);
	FUNC0( 1, FRAME_RATE_REG);
}