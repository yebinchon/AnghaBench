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
typedef  int u16 ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLKEVT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int CTRL_ENABLE ; 
 int CTRL_INT_ENABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ gpt_base ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(unsigned long cycles,
				 struct clock_event_device *clk_event_dev)
{
	u16 val = FUNC2(gpt_base + FUNC0(CLKEVT));

	if (val & CTRL_ENABLE)
		FUNC3(val & ~CTRL_ENABLE, gpt_base + FUNC0(CLKEVT));

	FUNC3(cycles, gpt_base + FUNC1(CLKEVT));

	val |= CTRL_ENABLE | CTRL_INT_ENABLE;
	FUNC3(val, gpt_base + FUNC0(CLKEVT));

	return 0;
}