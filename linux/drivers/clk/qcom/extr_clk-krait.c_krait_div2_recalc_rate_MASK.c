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
typedef  int u32 ;
struct krait_div2_clk {int shift; int /*<<< orphan*/  offset; int /*<<< orphan*/  width; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct krait_div2_clk* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long
FUNC4(struct clk_hw *hw, unsigned long parent_rate)
{
	struct krait_div2_clk *d = FUNC3(hw);
	u32 mask = FUNC0(d->width) - 1;
	u32 div;

	div = FUNC2(d->offset);
	div >>= d->shift;
	div &= mask;
	div = (div + 1) * 2;

	return FUNC1(parent_rate, div);
}