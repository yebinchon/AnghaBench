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
 int /*<<< orphan*/  PS2_CNT ; 
 struct clk* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	struct clk *bclk32;

	bclk32 = FUNC0(NULL, "BUS32_CLK");
	FUNC2(FUNC1(bclk32) / 200000, PS2_CNT); /* should > 5us */
}