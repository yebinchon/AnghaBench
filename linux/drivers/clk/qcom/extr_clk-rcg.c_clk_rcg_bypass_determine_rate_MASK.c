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
struct freq_tbl {int /*<<< orphan*/  src; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent_map; } ;
struct clk_rcg {TYPE_1__ s; struct freq_tbl* freq_tbl; } ;
struct clk_rate_request {int /*<<< orphan*/  best_parent_rate; int /*<<< orphan*/  rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct clk_hw* FUNC0 (struct clk_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct clk_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_rcg* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw,
					 struct clk_rate_request *req)
{
	struct clk_rcg *rcg = FUNC3(hw);
	const struct freq_tbl *f = rcg->freq_tbl;
	struct clk_hw *p;
	int index = FUNC2(hw, rcg->s.parent_map, f->src);

	req->best_parent_hw = p = FUNC0(hw, index);
	req->best_parent_rate = FUNC1(p, req->rate);
	req->rate = req->best_parent_rate;

	return 0;
}