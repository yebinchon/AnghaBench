#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct freq_tbl {int /*<<< orphan*/  src; } ;
struct frac_entry {int den; scalar_t__ num; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_rcg2 {scalar_t__ cmd_rcgr; TYPE_1__ clkr; int /*<<< orphan*/  parent_map; int /*<<< orphan*/  hid_width; struct freq_tbl* freq_tbl; } ;
struct clk_rate_request {int best_parent_rate; int rate; int /*<<< orphan*/  best_parent_hw; } ;
struct clk_hw {int dummy; } ;
typedef  int s64 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CFG_REG ; 
 int CFG_SRC_DIV_SHIFT ; 
 int EINVAL ; 
 int FUNC1 (int,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,scalar_t__) ; 
 struct frac_entry* frac_table_675m ; 
 struct frac_entry* frac_table_810m ; 
 int FUNC5 (struct clk_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 struct clk_rcg2* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw,
					struct clk_rate_request *req)
{
	struct clk_rcg2 *rcg = FUNC7(hw);
	const struct freq_tbl *f = rcg->freq_tbl;
	const struct frac_entry *frac;
	int delta = 100000;
	s64 request;
	u32 mask = FUNC0(rcg->hid_width) - 1;
	u32 hid_div;
	int index = FUNC5(hw, rcg->parent_map, f->src);

	/* Force the correct parent */
	req->best_parent_hw = FUNC2(hw, index);
	req->best_parent_rate = FUNC3(req->best_parent_hw);

	if (req->best_parent_rate == 810000000)
		frac = frac_table_810m;
	else
		frac = frac_table_675m;

	for (; frac->num; frac++) {
		request = req->rate;
		request *= frac->den;
		request = FUNC4(request, frac->num);
		if ((req->best_parent_rate < (request - delta)) ||
		    (req->best_parent_rate > (request + delta)))
			continue;

		FUNC6(rcg->clkr.regmap, rcg->cmd_rcgr + CFG_REG,
				&hid_div);
		hid_div >>= CFG_SRC_DIV_SHIFT;
		hid_div &= mask;

		req->rate = FUNC1(req->best_parent_rate,
				      frac->num, frac->den,
				      !!frac->den, hid_div);
		return 0;
	}

	return -EINVAL;
}