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
struct clk_hw {int dummy; } ;
struct ccu_common {scalar_t__ reg; scalar_t__ base; } ;

/* Variables and functions */
 int CCU_MMC_NEW_TIMING_MODE ; 
 int FUNC0 (struct clk_hw*,unsigned long,unsigned long) ; 
 struct ccu_common* FUNC1 (struct clk_hw*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, unsigned long rate,
			       unsigned long parent_rate)
{
	struct ccu_common *cm = FUNC1(hw);
	u32 val = FUNC2(cm->base + cm->reg);

	if (val & CCU_MMC_NEW_TIMING_MODE)
		rate *= 2;

	return FUNC0(hw, rate, parent_rate);
}