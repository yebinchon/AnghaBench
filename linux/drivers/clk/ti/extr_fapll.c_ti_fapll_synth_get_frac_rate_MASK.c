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
typedef  unsigned long u32 ;
struct fapll_synth {int /*<<< orphan*/  div; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long SYNTH_MAX_DIV_M ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct clk_hw*,unsigned long) ; 
 struct fapll_synth* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
						  unsigned long parent_rate)
{
	struct fapll_synth *synth = FUNC2(hw);
	unsigned long current_rate, frac_rate;
	u32 post_div_m;

	current_rate = FUNC1(hw, parent_rate);
	post_div_m = FUNC0(synth->div) & SYNTH_MAX_DIV_M;
	frac_rate = current_rate * post_div_m;

	return frac_rate;
}