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
struct gpt_rate_tbl {unsigned long mscale; unsigned long nscale; } ;
struct clk_hw {int dummy; } ;
struct clk_gpt {scalar_t__ lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  rtbl_cnt; struct gpt_rate_tbl* rtbl; } ;

/* Variables and functions */
 unsigned long GPT_MSCALE_MASK ; 
 unsigned long GPT_NSCALE_MASK ; 
 unsigned long GPT_NSCALE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  gpt_calc_rate ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 struct clk_gpt* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long drate,
				unsigned long prate)
{
	struct clk_gpt *gpt = FUNC4(hw);
	struct gpt_rate_tbl *rtbl = gpt->rtbl;
	unsigned long flags = 0, val;
	int i;

	FUNC0(hw, drate, prate, gpt_calc_rate, gpt->rtbl_cnt,
			&i);

	if (gpt->lock)
		FUNC2(gpt->lock, flags);

	val = FUNC1(gpt->reg) & ~GPT_MSCALE_MASK;
	val &= ~(GPT_NSCALE_MASK << GPT_NSCALE_SHIFT);

	val |= rtbl[i].mscale & GPT_MSCALE_MASK;
	val |= (rtbl[i].nscale & GPT_NSCALE_MASK) << GPT_NSCALE_SHIFT;

	FUNC5(val, gpt->reg);

	if (gpt->lock)
		FUNC3(gpt->lock, flags);

	return 0;
}