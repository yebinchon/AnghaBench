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
typedef  scalar_t__ u32 ;
struct freq_tbl {int /*<<< orphan*/  src; scalar_t__ pre_div; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {TYPE_2__* parent_map; } ;
struct TYPE_4__ {int /*<<< orphan*/  regmap; } ;
struct clk_rcg {TYPE_3__ s; int /*<<< orphan*/  p; int /*<<< orphan*/  ns_reg; TYPE_1__ clkr; } ;
struct clk_hw {int dummy; } ;
struct TYPE_5__ {scalar_t__ cfg; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct clk_rcg*,struct freq_tbl*) ; 
 int FUNC1 (struct clk_hw*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_3__*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct clk_rcg* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long rate,
				unsigned long parent_rate)
{
	struct clk_rcg *rcg = FUNC5(hw);
	struct freq_tbl f = { 0 };
	u32 ns, src;
	int i, ret, num_parents = FUNC1(hw);

	ret = FUNC4(rcg->clkr.regmap, rcg->ns_reg, &ns);
	if (ret)
		return ret;

	src = FUNC3(&rcg->s, ns);
	f.pre_div = FUNC2(&rcg->p, ns) + 1;

	for (i = 0; i < num_parents; i++) {
		if (src == rcg->s.parent_map[i].cfg) {
			f.src = rcg->s.parent_map[i].src;
			return FUNC0(rcg, &f);
		}
	}

	return -EINVAL;
}