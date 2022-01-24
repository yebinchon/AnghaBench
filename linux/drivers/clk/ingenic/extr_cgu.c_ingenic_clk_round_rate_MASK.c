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
struct ingenic_clk {size_t idx; struct ingenic_cgu* cgu; } ;
struct TYPE_2__ {unsigned int div; } ;
struct ingenic_cgu_clk_info {int type; TYPE_1__ fixdiv; } ;
struct ingenic_cgu {struct ingenic_cgu_clk_info* clock_info; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CGU_CLK_DIV ; 
 int CGU_CLK_FIXDIV ; 
 long FUNC0 (unsigned long,unsigned int) ; 
 unsigned int FUNC1 (struct ingenic_cgu_clk_info const*,unsigned long,unsigned long) ; 
 struct ingenic_clk* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static long
FUNC3(struct clk_hw *hw, unsigned long req_rate,
		       unsigned long *parent_rate)
{
	struct ingenic_clk *ingenic_clk = FUNC2(hw);
	struct ingenic_cgu *cgu = ingenic_clk->cgu;
	const struct ingenic_cgu_clk_info *clk_info;
	unsigned int div = 1;

	clk_info = &cgu->clock_info[ingenic_clk->idx];

	if (clk_info->type & CGU_CLK_DIV)
		div = FUNC1(clk_info, *parent_rate, req_rate);
	else if (clk_info->type & CGU_CLK_FIXDIV)
		div = clk_info->fixdiv.div;

	return FUNC0(*parent_rate, div);
}