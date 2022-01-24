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
struct rockchip_ddrclk {int /*<<< orphan*/  lock; } ;
struct clk_hw {int dummy; } ;
struct arm_smccc_res {int a0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE ; 
 int /*<<< orphan*/  ROCKCHIP_SIP_DRAM_FREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 struct rockchip_ddrclk* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, unsigned long drate,
					unsigned long prate)
{
	struct rockchip_ddrclk *ddrclk = FUNC3(hw);
	unsigned long flags;
	struct arm_smccc_res res;

	FUNC1(ddrclk->lock, flags);
	FUNC0(ROCKCHIP_SIP_DRAM_FREQ, drate, 0,
		      ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE,
		      0, 0, 0, 0, &res);
	FUNC2(ddrclk->lock, flags);

	return res.a0;
}