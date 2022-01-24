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
struct clk_prcc {scalar_t__ is_enabled; scalar_t__ base; int /*<<< orphan*/  cg_sel; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ PRCC_PCKDIS ; 
 struct clk_prcc* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct clk_hw *hw)
{
	struct clk_prcc *clk = FUNC0(hw);

	FUNC1(clk->cg_sel, (clk->base + PRCC_PCKDIS));
	clk->is_enabled = 0;
}