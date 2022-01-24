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
struct clk_mmc {int clken_bit; int /*<<< orphan*/  clken_reg; int /*<<< orphan*/  div_reg; int /*<<< orphan*/  div_bits; int /*<<< orphan*/  div_off; int /*<<< orphan*/  drv_reg; int /*<<< orphan*/  drv_bits; int /*<<< orphan*/  drv_off; int /*<<< orphan*/  sam_reg; int /*<<< orphan*/  sam_bits; int /*<<< orphan*/  sam_off; } ;
struct clk_hw {int dummy; } ;
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct clk_mmc* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long rate)
{
	struct clk_mmc *mclk = FUNC4(hw);
	unsigned long flags;
	u32 sam, drv, div, val;
	static DEFINE_SPINLOCK(mmc_clk_lock);

	switch (rate) {
	case 13000000:
		sam = 3;
		drv = 1;
		div = 1;
		break;
	case 25000000:
		sam = 13;
		drv = 6;
		div = 6;
		break;
	case 50000000:
		sam = 3;
		drv = 6;
		div = 6;
		break;
	case 100000000:
		sam = 6;
		drv = 4;
		div = 6;
		break;
	case 180000000:
		sam = 6;
		drv = 4;
		div = 7;
		break;
	default:
		return -EINVAL;
	}

	FUNC2(&mmc_clk_lock, flags);

	val = FUNC1(mclk->clken_reg);
	val &= ~(1 << mclk->clken_bit);
	FUNC5(val, mclk->clken_reg);

	val = FUNC1(mclk->sam_reg);
	val = FUNC0(val, sam, mclk->sam_off, mclk->sam_bits);
	FUNC5(val, mclk->sam_reg);

	val = FUNC1(mclk->drv_reg);
	val = FUNC0(val, drv, mclk->drv_off, mclk->drv_bits);
	FUNC5(val, mclk->drv_reg);

	val = FUNC1(mclk->div_reg);
	val = FUNC0(val, div, mclk->div_off, mclk->div_bits);
	FUNC5(val, mclk->div_reg);

	val = FUNC1(mclk->clken_reg);
	val |= 1 << mclk->clken_bit;
	FUNC5(val, mclk->clken_reg);

	FUNC3(&mmc_clk_lock, flags);

	return 0;
}