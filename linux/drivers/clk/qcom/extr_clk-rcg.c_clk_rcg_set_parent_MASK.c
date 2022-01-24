#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  regmap; } ;
struct TYPE_6__ {TYPE_2__* parent_map; } ;
struct clk_rcg {int /*<<< orphan*/  ns_reg; TYPE_1__ clkr; TYPE_3__ s; } ;
struct clk_hw {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_rcg* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, u8 index)
{
	struct clk_rcg *rcg = FUNC3(hw);
	u32 ns;

	FUNC0(rcg->clkr.regmap, rcg->ns_reg, &ns);
	ns = FUNC2(&rcg->s, rcg->s.parent_map[index].cfg, ns);
	FUNC1(rcg->clkr.regmap, rcg->ns_reg, ns);

	return 0;
}