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
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;
struct ccu_common {int features; scalar_t__ reg; scalar_t__ base; } ;

/* Variables and functions */
 int CCU_FEATURE_MMC_TIMING_SWITCH ; 
 int CCU_MMC_NEW_TIMING_MODE ; 
 int ENOTSUPP ; 
 struct clk_hw* FUNC0 (struct clk*) ; 
 struct ccu_common* FUNC1 (struct clk_hw*) ; 
 int FUNC2 (scalar_t__) ; 

int FUNC3(struct clk *clk)
{
	struct clk_hw *hw = FUNC0(clk);
	struct ccu_common *cm = FUNC1(hw);

	if (!(cm->features & CCU_FEATURE_MMC_TIMING_SWITCH))
		return -ENOTSUPP;

	return !!(FUNC2(cm->base + cm->reg) & CCU_MMC_NEW_TIMING_MODE);
}