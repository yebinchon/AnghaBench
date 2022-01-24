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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mmp_clk_mix {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmp_clk_mix*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmp_clk_mix*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mmp_clk_mix*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct mmp_clk_mix* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw,
						unsigned long rate,
						unsigned long parent_rate,
						u8 index)
{
	struct mmp_clk_mix *mix = FUNC3(hw);
	unsigned int div;
	u32 div_val, mux_val;

	div = parent_rate / rate;
	div_val = FUNC0(mix, div);
	mux_val = FUNC1(mix, index);

	return FUNC2(mix, mux_val, div_val, 1, 1);
}