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
typedef  int u8 ;

/* Variables and functions */
 int LCR_DLAB ; 
 int /*<<< orphan*/  UART_DLL ; 
 int /*<<< orphan*/  UART_DLM ; 
 int /*<<< orphan*/  UART_LCR ; 
 int /*<<< orphan*/  UART_MCR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

unsigned int FUNC2(unsigned int clock)
{
	unsigned int dll, dlm, divisor, prescaler, speed;
	u8 old_lcr;

	old_lcr = FUNC0(UART_LCR);

	/* select divisor latch registers.  */
	FUNC1(UART_LCR, old_lcr | LCR_DLAB);

	/* now, read the divisor */
	dll = FUNC0(UART_DLL);
	dlm = FUNC0(UART_DLM);
	divisor = dlm << 8 | dll;

	/* check prescaling */
	if (FUNC0(UART_MCR) & 0x80)
		prescaler = 4;
	else
		prescaler = 1;

	/* restore the LCR */
	FUNC1(UART_LCR, old_lcr);

	/* calculate speed */
	speed = (clock / prescaler) / (divisor * 16);

	/* sanity check */
	if (speed > (clock / 16))
		speed = 9600;

	return speed;
}