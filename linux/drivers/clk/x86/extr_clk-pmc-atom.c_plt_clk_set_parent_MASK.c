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
struct clk_plt {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMC_MASK_CLK_FREQ ; 
 int /*<<< orphan*/  FUNC0 (struct clk_plt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct clk_plt* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, u8 index)
{
	struct clk_plt *clk = FUNC2(hw);

	FUNC0(clk, PMC_MASK_CLK_FREQ, FUNC1(index));

	return 0;
}