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
typedef  int /*<<< orphan*/  u32 ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;
struct ccu_common {int features; int /*<<< orphan*/  lock; scalar_t__ reg; scalar_t__ base; } ;

/* Variables and functions */
 int CCU_FEATURE_MMC_TIMING_SWITCH ; 
 int /*<<< orphan*/  CCU_MMC_NEW_TIMING_MODE ; 
 int ENOTSUPP ; 
 struct clk_hw* FUNC0 (struct clk*) ; 
 struct ccu_common* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC6(struct clk *clk, bool new_mode)
{
	struct clk_hw *hw = FUNC0(clk);
	struct ccu_common *cm = FUNC1(hw);
	unsigned long flags;
	u32 val;

	if (!(cm->features & CCU_FEATURE_MMC_TIMING_SWITCH))
		return -ENOTSUPP;

	FUNC3(cm->lock, flags);

	val = FUNC2(cm->base + cm->reg);
	if (new_mode)
		val |= CCU_MMC_NEW_TIMING_MODE;
	else
		val &= ~CCU_MMC_NEW_TIMING_MODE;
	FUNC5(val, cm->base + cm->reg);

	FUNC4(cm->lock, flags);

	return 0;
}