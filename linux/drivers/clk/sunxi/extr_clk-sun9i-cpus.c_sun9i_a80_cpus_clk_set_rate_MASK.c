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
struct sun9i_a80_cpus_clk {int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  sun9i_a80_cpus_lock ; 
 struct sun9i_a80_cpus_clk* FUNC7 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct clk_hw *hw, unsigned long rate,
				       unsigned long parent_rate)
{
	struct sun9i_a80_cpus_clk *cpus = FUNC7(hw);
	unsigned long flags;
	u8 div, pre_div, parent;
	u32 reg;

	FUNC4(&sun9i_a80_cpus_lock, flags);

	reg = FUNC3(cpus->reg);

	/* need to know which parent is used to apply pre-divider */
	parent = FUNC1(reg);
	FUNC6(rate, &div, &pre_div, parent, parent_rate);

	reg = FUNC0(reg, div);
	reg = FUNC2(reg, pre_div);
	FUNC8(reg, cpus->reg);

	FUNC5(&sun9i_a80_cpus_lock, flags);

	return 0;
}