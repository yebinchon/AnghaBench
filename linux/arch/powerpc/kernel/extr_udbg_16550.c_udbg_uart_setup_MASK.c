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
 int LCR_DLAB ; 
 int /*<<< orphan*/  UART_DLL ; 
 int /*<<< orphan*/  UART_DLM ; 
 int /*<<< orphan*/  UART_FCR ; 
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_LCR ; 
 int /*<<< orphan*/  UART_MCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(unsigned int speed, unsigned int clock)
{
	unsigned int dll, base_bauds;

	if (!&udbg_uart_out)
		return;

	if (clock == 0)
		clock = 1843200;
	if (speed == 0)
		speed = 9600;

	base_bauds = clock / 16;
	dll = base_bauds / speed;

	FUNC0(UART_LCR, 0x00);
	FUNC0(UART_IER, 0xff);
	FUNC0(UART_IER, 0x00);
	FUNC0(UART_LCR, LCR_DLAB);
	FUNC0(UART_DLL, dll & 0xff);
	FUNC0(UART_DLM, dll >> 8);
	/* 8 data, 1 stop, no parity */
	FUNC0(UART_LCR, 0x3);
	/* RTS/DTR */
	FUNC0(UART_MCR, 0x3);
	/* Clear & enable FIFOs */
	FUNC0(UART_FCR, 0x7);
}