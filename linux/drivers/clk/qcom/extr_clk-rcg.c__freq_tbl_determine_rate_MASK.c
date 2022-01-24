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
struct parent_map {int dummy; } ;
struct freq_tbl {unsigned long pre_div; unsigned long n; unsigned long freq; int /*<<< orphan*/  m; int /*<<< orphan*/  src; } ;
struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long CLK_SET_RATE_PARENT ; 
 int EINVAL ; 
 unsigned long FUNC0 (struct clk_hw*) ; 
 struct clk_hw* FUNC1 (struct clk_hw*,int) ; 
 unsigned long FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 struct freq_tbl* FUNC4 (struct freq_tbl const*,unsigned long) ; 
 int FUNC5 (struct clk_hw*,struct parent_map const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, const struct freq_tbl *f,
		struct clk_rate_request *req,
		const struct parent_map *parent_map)
{
	unsigned long clk_flags, rate = req->rate;
	struct clk_hw *p;
	int index;

	f = FUNC4(f, rate);
	if (!f)
		return -EINVAL;

	index = FUNC5(hw, parent_map, f->src);
	if (index < 0)
		return index;

	clk_flags = FUNC0(hw);
	p = FUNC1(hw, index);
	if (clk_flags & CLK_SET_RATE_PARENT) {
		rate = rate * f->pre_div;
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