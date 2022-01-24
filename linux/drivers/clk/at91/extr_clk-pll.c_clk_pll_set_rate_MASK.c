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
typedef  void* u32 ;
struct clk_pll {void* mul; void* div; void* range; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 long FUNC0 (struct clk_pll*,unsigned long,unsigned long,void**,void**,void**) ; 
 struct clk_pll* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw, unsigned long rate,
			    unsigned long parent_rate)
{
	struct clk_pll *pll = FUNC1(hw);
	long ret;
	u32 div;
	u32 mul;
	u32 index;

	ret = FUNC0(pll, rate, parent_rate,
				       &div, &mul, &index);
	if (ret < 0)
		return ret;

	pll->range = index;
	pll->div = div;
	pll->mul = mul;

	return 0;
}