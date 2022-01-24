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
typedef  int /*<<< orphan*/  u32 ;
struct mtk_clk_pll {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_clk_pll*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_clk_pll*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtk_clk_pll* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, unsigned long rate,
		unsigned long parent_rate)
{
	struct mtk_clk_pll *pll = FUNC2(hw);
	u32 pcw = 0;
	u32 postdiv;

	FUNC0(pll, &pcw, &postdiv, rate, parent_rate);
	FUNC1(pll, pcw, postdiv);

	return 0;
}