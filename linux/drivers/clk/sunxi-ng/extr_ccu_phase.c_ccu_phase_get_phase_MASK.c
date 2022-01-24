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
typedef  int u16 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ reg; scalar_t__ base; } ;
struct ccu_phase {int shift; int width; TYPE_1__ common; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 struct clk_hw* FUNC1 (struct clk_hw*) ; 
 unsigned int FUNC2 (struct clk_hw*) ; 
 struct ccu_phase* FUNC3 (struct clk_hw*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	struct ccu_phase *phase = FUNC3(hw);
	struct clk_hw *parent, *grandparent;
	unsigned int parent_rate, grandparent_rate;
	u16 step, parent_div;
	u32 reg;
	u8 delay;

	reg = FUNC4(phase->common.base + phase->common.reg);
	delay = (reg >> phase->shift);
	delay &= (1 << phase->width) - 1;

	if (!delay)
		return 180;

	/* Get our parent clock, it's the one that can adjust its rate */
	parent = FUNC1(hw);
	if (!parent)
		return -EINVAL;

	/* And its rate */
	parent_rate = FUNC2(parent);
	if (!parent_rate)
		return -EINVAL;

	/* Now, get our parent's parent (most likely some PLL) */
	grandparent = FUNC1(parent);
	if (!grandparent)
		return -EINVAL;

	/* And its rate */
	grandparent_rate = FUNC2(grandparent);
	if (!grandparent_rate)
		return -EINVAL;

	/* Get our parent clock divider */
	parent_div = grandparent_rate / parent_rate;

	step = FUNC0(360, parent_div);
	return delay * step;
}