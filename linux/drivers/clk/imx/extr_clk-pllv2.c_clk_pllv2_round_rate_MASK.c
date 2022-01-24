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

/* Variables and functions */
 int /*<<< orphan*/  MXC_PLL_DP_CTL_DPDCK0_2_EN ; 
 long FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long rate,
		unsigned long *prate)
{
	u32 dp_op, dp_mfd, dp_mfn;
	int ret;

	ret = FUNC1(rate, *prate, &dp_op, &dp_mfd, &dp_mfn);
	if (ret)
		return ret;

	return FUNC0(*prate, MXC_PLL_DP_CTL_DPDCK0_2_EN,
			dp_op, dp_mfd, dp_mfn);
}