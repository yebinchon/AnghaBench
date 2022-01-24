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
struct clk_scu {scalar_t__ rsrc_id; } ;
struct clk_hw {int dummy; } ;
struct arm_smccc_res {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IMX_SC_R_A35 ; 
 int /*<<< orphan*/  IMX_SIP_CPUFREQ ; 
 int /*<<< orphan*/  IMX_SIP_SET_CPUFREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ; 
 struct clk_scu* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw, unsigned long rate,
				    unsigned long parent_rate)
{
	struct clk_scu *clk = FUNC1(hw);
	struct arm_smccc_res res;
	unsigned long cluster_id;

	if (clk->rsrc_id == IMX_SC_R_A35)
		cluster_id = 0;
	else
		return -EINVAL;

	/* CPU frequency scaling can ONLY be done by ARM-Trusted-Firmware */
	FUNC0(IMX_SIP_CPUFREQ, IMX_SIP_SET_CPUFREQ,
		      cluster_id, rate, 0, 0, 0, 0, &res);

	return 0;
}