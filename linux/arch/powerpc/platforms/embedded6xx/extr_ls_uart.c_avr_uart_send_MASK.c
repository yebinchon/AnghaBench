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
 scalar_t__ UART_TX ; 
 scalar_t__ avr_addr ; 
 int /*<<< orphan*/  avr_clock ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const) ; 

void FUNC1(const char c)
{
	if (!avr_addr || !avr_clock)
		return;

	FUNC0(avr_addr + UART_TX, c);
	FUNC0(avr_addr + UART_TX, c);
	FUNC0(avr_addr + UART_TX, c);
	FUNC0(avr_addr + UART_TX, c);
}