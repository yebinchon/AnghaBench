#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct stm32_clk_mmux {TYPE_1__* mmux; } ;
struct clk_mux {int dummy; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int (* set_parent ) (struct clk_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int nbr_clk; struct clk_hw** hws; } ;

/* Variables and functions */
 struct clk_hw* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*,struct clk_hw*) ; 
 TYPE_2__ clk_mux_ops ; 
 int FUNC2 (struct clk_hw*,int /*<<< orphan*/ ) ; 
 struct stm32_clk_mmux* FUNC3 (struct clk_mux*) ; 
 struct clk_mux* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, u8 index)
{
	struct clk_mux *mux = FUNC4(hw);
	struct stm32_clk_mmux *clk_mmux = FUNC3(mux);
	struct clk_hw *hwp;
	int ret, n;

	ret = clk_mux_ops.set_parent(hw, index);
	if (ret)
		return ret;

	hwp = FUNC0(hw);

	for (n = 0; n < clk_mmux->mmux->nbr_clk; n++)
		if (clk_mmux->mmux->hws[n] != hw)
			FUNC1(clk_mmux->mmux->hws[n], hwp);

	return 0;
}