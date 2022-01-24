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
typedef  int u32 ;
struct clk_sp810_timerclken {int /*<<< orphan*/  channel; struct clk_sp810* sp810; } ;
struct clk_sp810 {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SCCTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct clk_sp810_timerclken* FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, u8 index)
{
	struct clk_sp810_timerclken *timerclken = FUNC5(hw);
	struct clk_sp810 *sp810 = timerclken->sp810;
	u32 val, shift = FUNC0(timerclken->channel);
	unsigned long flags = 0;

	if (FUNC1(index > 1))
		return -EINVAL;

	FUNC3(&sp810->lock, flags);

	val = FUNC2(sp810->base + SCCTRL);
	val &= ~(1 << shift);
	val |= index << shift;
	FUNC6(val, sp810->base + SCCTRL);

	FUNC4(&sp810->lock, flags);

	return 0;
}