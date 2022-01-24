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
typedef  int u64 ;
struct clk_hw {int dummy; } ;
struct clk_divider {unsigned int shift; int /*<<< orphan*/  width; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 unsigned long FUNC0 (int,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 struct clk_divider* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
						  unsigned long parent_rate)
{
	struct clk_divider *divider = FUNC3(hw);
	unsigned int val;

	val = FUNC2(divider->reg) >> divider->shift;
	val &= FUNC1(divider->width);
	val = val * 2 + 3;

	return FUNC0(((u64)parent_rate * 2), val);
}