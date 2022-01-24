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
typedef  unsigned int u64 ;
struct cpg_z_clk {unsigned long fixed_div; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (unsigned long,unsigned long) ; 
 struct cpg_z_clk* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC3(struct clk_hw *hw, unsigned long rate,
				 unsigned long *parent_rate)
{
	struct cpg_z_clk *zclk = FUNC2(hw);
	unsigned long prate;
	unsigned int mult;

	prate = *parent_rate / zclk->fixed_div;
	mult = FUNC1(rate * 32ULL, prate);
	mult = FUNC0(mult, 1U, 32U);

	return (u64)prate * mult / 32;
}