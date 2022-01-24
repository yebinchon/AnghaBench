#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct clk_sp810_timerclken {int /*<<< orphan*/  channel; TYPE_1__* sp810; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SCCTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 struct clk_sp810_timerclken* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC3(struct clk_hw *hw)
{
	struct clk_sp810_timerclken *timerclken = FUNC2(hw);
	u32 val = FUNC1(timerclken->sp810->base + SCCTRL);

	return !!(val & (1 << FUNC0(timerclken->channel)));
}