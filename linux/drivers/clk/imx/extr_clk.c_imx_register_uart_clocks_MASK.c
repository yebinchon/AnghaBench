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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 scalar_t__ imx_keep_uart_clocks ; 
 struct clk*** imx_uart_clocks ; 

void FUNC1(struct clk ** const clks[])
{
	if (imx_keep_uart_clocks) {
		int i;

		imx_uart_clocks = clks;
		for (i = 0; imx_uart_clocks[i]; i++)
			FUNC0(*imx_uart_clocks[i]);
	}
}