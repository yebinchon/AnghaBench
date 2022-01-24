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
struct uart_clk {int /*<<< orphan*/  sysc_addr; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct clk*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct clk *clk)
{
	int ret;
	struct uart_clk *uclk;

	ret = FUNC0(clk);
	if (ret == 0) {
		/* Set smart idle acknowledgement mode */
		uclk = (struct uart_clk *)clk;
		FUNC2((FUNC1(uclk->sysc_addr) & ~0x10) | 8,
			    uclk->sysc_addr);
	}

	return ret;
}