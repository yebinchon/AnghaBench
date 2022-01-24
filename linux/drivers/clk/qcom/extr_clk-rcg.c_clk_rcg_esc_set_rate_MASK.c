#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct freq_tbl {int pre_div; int /*<<< orphan*/  src; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {TYPE_3__* parent_map; } ;
struct TYPE_6__ {int /*<<< orphan*/  regmap; } ;
struct TYPE_5__ {int /*<<< orphan*/  pre_div_width; } ;
struct clk_rcg {TYPE_4__ s; int /*<<< orphan*/  ns_reg; TYPE_2__ clkr; TYPE_1__ p; } ;
struct clk_hw {int dummy; } ;
struct TYPE_7__ {scalar_t__ cfg; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (struct clk_rcg*,struct freq_tbl*) ; 
 int FUNC2 (struct clk_hw*) ; 
 scalar_t__ FUNC3 (TYPE_4__*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct clk_rcg* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long rate,
				unsigned long parent_rate)
{
	struct clk_rcg *rcg = FUNC5(hw);
	struct freq_tbl f = { 0 };
	int pre_div_max = FUNC0(rcg->p.pre_div_width);
	int div;
	u32 ns;
	int i, ret, num_parents = FUNC2(hw);

	if (rate == 0)
		return -EINVAL;

	ret = FUNC4(rcg->clkr.regmap, rcg->ns_reg, &ns);
	if (ret)
		return ret;

	ns = FUNC3(&rcg->s, ns);

	for (i = 0; i < num_parents; i++) {
		if (ns == rcg->s.parent_map[i].cfg) {
			f.src = rcg->s.parent_map[i].src;
			break;
		}
	}

	div = parent_rate / rate;

	if (div >= 1 && div <= pre_div_max) {
		f.pre_div = div;
		return FUNC1(rcg, &f);
	}

	return -EINVAL;
}