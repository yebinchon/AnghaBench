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
struct freq_tbl {int pre_div; unsigned long m; unsigned long n; int /*<<< orphan*/  src; int /*<<< orphan*/  member_0; } ;
struct frac_entry {int num; unsigned long den; } ;
struct TYPE_6__ {TYPE_2__* parent_map; } ;
struct TYPE_4__ {int /*<<< orphan*/  regmap; } ;
struct clk_rcg {TYPE_3__ s; int /*<<< orphan*/  ns_reg; TYPE_1__ clkr; } ;
struct clk_hw {int dummy; } ;
struct TYPE_5__ {scalar_t__ cfg; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct clk_rcg*,struct freq_tbl*) ; 
 int FUNC1 (struct clk_hw*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,scalar_t__) ; 
 struct frac_entry* pixel_table ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct clk_rcg* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, unsigned long rate,
				unsigned long parent_rate)
{
	struct clk_rcg *rcg = FUNC4(hw);
	int delta = 100000;
	const struct frac_entry *frac = pixel_table;
	unsigned long request;
	struct freq_tbl f = { 0 };
	u32 ns, src;
	int i, ret, num_parents = FUNC1(hw);

	ret = FUNC3(rcg->clkr.regmap, rcg->ns_reg, &ns);
	if (ret)
		return ret;

	src = FUNC2(&rcg->s, ns);

	for (i = 0; i < num_parents; i++) {
		if (src == rcg->s.parent_map[i].cfg) {
			f.src = rcg->s.parent_map[i].src;
			break;
		}
	}

	/* bypass the pre divider */
	f.pre_div = 1;

	/* let us find appropriate m/n values for this */
	for (; frac->num; frac++) {
		request = (rate * frac->den) / frac->num;

		if ((parent_rate < (request - delta)) ||
			(parent_rate > (request + delta)))
			continue;

		f.m = frac->num;
		f.n = frac->den;

		return FUNC0(rcg, &f);
	}

	return -EINVAL;
}