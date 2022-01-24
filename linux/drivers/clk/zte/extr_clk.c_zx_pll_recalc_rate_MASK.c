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
struct clk_zx_pll {TYPE_1__* lookup_table; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned long rate; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct clk_zx_pll*) ; 
 struct clk_zx_pll* FUNC1 (struct clk_hw*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
					unsigned long parent_rate)
{
	struct clk_zx_pll *zx_pll = FUNC1(hw);
	int idx;

	idx = FUNC0(zx_pll);
	if (FUNC2(idx == -EINVAL))
		return 0;

	return zx_pll->lookup_table[idx].rate;
}