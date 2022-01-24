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
typedef  unsigned long u64 ;
struct freq_tbl {unsigned long freq; int pre_div; unsigned long n; int /*<<< orphan*/  m; int /*<<< orphan*/  src; } ;
struct clk_rcg2 {int /*<<< orphan*/  parent_map; } ;
struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;
typedef  enum freq_policy { ____Placeholder_freq_policy } freq_policy ;

/* Variables and functions */
#define  CEIL 129 
 unsigned long CLK_SET_RATE_PARENT ; 
 int EINVAL ; 
#define  FLOOR 128 
 unsigned long FUNC0 (struct clk_hw*) ; 
 struct clk_hw* FUNC1 (struct clk_hw*,int) ; 
 unsigned long FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 struct freq_tbl* FUNC4 (struct freq_tbl const*,unsigned long) ; 
 struct freq_tbl* FUNC5 (struct freq_tbl const*,unsigned long) ; 
 int FUNC6 (struct clk_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_rcg2* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw, const struct freq_tbl *f,
				    struct clk_rate_request *req,
				    enum freq_policy policy)
{
	unsigned long clk_flags, rate = req->rate;
	struct clk_hw *p;
	struct clk_rcg2 *rcg = FUNC7(hw);
	int index;

	switch (policy) {
	case FLOOR:
		f = FUNC5(f, rate);
		break;
	case CEIL:
		f = FUNC4(f, rate);
		break;
	default:
		return -EINVAL;
	};

	if (!f)
		return -EINVAL;

	index = FUNC6(hw, rcg->parent_map, f->src);
	if (index < 0)
		return index;

	clk_flags = FUNC0(hw);
	p = FUNC1(hw, index);
	if (clk_flags & CLK_SET_RATE_PARENT) {
		rate = f->freq;
		if (f->pre_div) {
			rate /= 2;
			rate *= f->pre_div + 1;
		}

		if (f->n) {
			u64 tmp = rate;
			tmp = tmp * f->n;
			FUNC3(tmp, f->m);
			rate = tmp;
		}
	} else {
		rate =  FUNC2(p);
	}
	req->best_parent_hw = p;
	req->best_parent_rate = rate;
	req->rate = f->freq;

	return 0;
}