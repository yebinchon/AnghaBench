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
typedef  int u32 ;
struct samsung_clk_pll {int /*<<< orphan*/  con_reg; int /*<<< orphan*/  lock_offs; int /*<<< orphan*/  enable_offs; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct samsung_clk_pll* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	struct samsung_clk_pll *pll = FUNC3(hw);
	u32 tmp;

	tmp = FUNC2(pll->con_reg);
	tmp |= FUNC0(pll->enable_offs);
	FUNC4(tmp, pll->con_reg);

	/* wait lock time */
	do {
		FUNC1();
		tmp = FUNC2(pll->con_reg);
	} while (!(tmp & FUNC0(pll->lock_offs)));

	return 0;
}