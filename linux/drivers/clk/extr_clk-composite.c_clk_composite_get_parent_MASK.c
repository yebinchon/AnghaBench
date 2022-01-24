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
struct clk_ops {int /*<<< orphan*/  (* get_parent ) (struct clk_hw*) ;} ;
struct clk_hw {int dummy; } ;
struct clk_composite {struct clk_hw* mux_hw; struct clk_ops* mux_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*,struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 struct clk_composite* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC3(struct clk_hw *hw)
{
	struct clk_composite *composite = FUNC2(hw);
	const struct clk_ops *mux_ops = composite->mux_ops;
	struct clk_hw *mux_hw = composite->mux_hw;

	FUNC0(mux_hw, hw);

	return mux_ops->get_parent(mux_hw);
}