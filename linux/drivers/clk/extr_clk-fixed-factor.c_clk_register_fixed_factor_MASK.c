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
struct device {int dummy; } ;
struct clk_hw {struct clk* clk; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 struct clk* FUNC0 (struct clk_hw*) ; 
 scalar_t__ FUNC1 (struct clk_hw*) ; 
 struct clk_hw* FUNC2 (struct device*,char const*,char const*,unsigned long,unsigned int,unsigned int) ; 

struct clk *FUNC3(struct device *dev, const char *name,
		const char *parent_name, unsigned long flags,
		unsigned int mult, unsigned int div)
{
	struct clk_hw *hw;

	hw = FUNC2(dev, name, parent_name, flags, mult,
					  div);
	if (FUNC1(hw))
		return FUNC0(hw);
	return hw->clk;
}