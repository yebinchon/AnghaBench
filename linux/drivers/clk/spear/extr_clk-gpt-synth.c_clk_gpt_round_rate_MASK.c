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
struct clk_gpt {int /*<<< orphan*/  rtbl_cnt; } ;

/* Variables and functions */
 long FUNC0 (struct clk_hw*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  gpt_calc_rate ; 
 struct clk_gpt* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long drate,
		unsigned long *prate)
{
	struct clk_gpt *gpt = FUNC1(hw);
	int unused;

	return FUNC0(hw, drate, *prate, gpt_calc_rate,
			gpt->rtbl_cnt, &unused);
}