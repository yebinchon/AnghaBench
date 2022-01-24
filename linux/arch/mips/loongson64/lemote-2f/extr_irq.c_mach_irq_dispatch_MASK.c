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
 unsigned int CAUSEF_IP2 ; 
 unsigned int CAUSEF_IP3 ; 
 unsigned int CAUSEF_IP6 ; 
 unsigned int CAUSEF_IP7 ; 
 int /*<<< orphan*/  LOONGSON_TIMER_IRQ ; 
 int /*<<< orphan*/  LOONGSON_UART_IRQ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(unsigned int pending)
{
	if (pending & CAUSEF_IP7)
		FUNC1(LOONGSON_TIMER_IRQ);
	else if (pending & CAUSEF_IP6) {	/* North Bridge, Perf counter */
		FUNC2();
		FUNC0();
	} else if (pending & CAUSEF_IP3)	/* CPU UART */
		FUNC1(LOONGSON_UART_IRQ);
	else if (pending & CAUSEF_IP2)	/* South Bridge */
		FUNC3();
	else
		FUNC4();
}