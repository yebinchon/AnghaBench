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
struct cpg_z_clk {int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int CPG_FRQCRC_ZFC_MASK ; 
 unsigned int CPG_FRQCRC_ZFC_SHIFT ; 
 unsigned long FUNC0 (unsigned int,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 struct cpg_z_clk* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
					   unsigned long parent_rate)
{
	struct cpg_z_clk *zclk = FUNC2(hw);
	unsigned int mult;
	unsigned int val;

	val = (FUNC1(zclk->reg) & CPG_FRQCRC_ZFC_MASK) >> CPG_FRQCRC_ZFC_SHIFT;
	mult = 32 - val;

	return FUNC0((u64)parent_rate * mult, 32);
}