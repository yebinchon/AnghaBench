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
struct clk_prcc {int cg_sel; int is_enabled; scalar_t__ base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ PRCC_PCKEN ; 
 scalar_t__ PRCC_PCKSR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 
 struct clk_prcc* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct clk_prcc *clk = FUNC2(hw);

	FUNC3(clk->cg_sel, (clk->base + PRCC_PCKEN));
	while (!(FUNC1(clk->base + PRCC_PCKSR) & clk->cg_sel))
		FUNC0();

	clk->is_enabled = 1;
	return 0;
}