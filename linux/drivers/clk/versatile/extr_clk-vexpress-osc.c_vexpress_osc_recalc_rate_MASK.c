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
typedef  unsigned long u32 ;
struct vexpress_osc {int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 struct vexpress_osc* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hw,
		unsigned long parent_rate)
{
	struct vexpress_osc *osc = FUNC1(hw);
	u32 rate;

	FUNC0(osc->reg, 0, &rate);

	return rate;
}