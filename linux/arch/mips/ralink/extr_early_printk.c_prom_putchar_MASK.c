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
 int /*<<< orphan*/  CONFIG_SOC_MT7621 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int UART_LSR_THRE ; 
 int /*<<< orphan*/  UART_REG_LSR ; 
 int /*<<< orphan*/  UART_REG_LSR_RT2880 ; 
 int /*<<< orphan*/  UART_REG_TX ; 
 int /*<<< orphan*/  UART_TX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int init_complete ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ ) ; 

void FUNC5(char ch)
{
	if (!init_complete) {
		FUNC1();
		init_complete = 1;
	}

	if (FUNC0(CONFIG_SOC_MT7621) || FUNC2()) {
		FUNC4((unsigned char)ch, UART_TX);
		while ((FUNC3(UART_REG_LSR) & UART_LSR_THRE) == 0)
			;
	} else {
		while ((FUNC3(UART_REG_LSR_RT2880) & UART_LSR_THRE) == 0)
			;
		FUNC4((unsigned char)ch, UART_REG_TX);
		while ((FUNC3(UART_REG_LSR_RT2880) & UART_LSR_THRE) == 0)
			;
	}
}