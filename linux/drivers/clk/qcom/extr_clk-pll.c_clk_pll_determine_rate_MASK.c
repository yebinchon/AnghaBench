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
struct pll_freq_tbl {int /*<<< orphan*/  freq; } ;
struct clk_rate_request {int /*<<< orphan*/  rate; int /*<<< orphan*/  best_parent_rate; } ;
struct clk_pll {int /*<<< orphan*/  freq_tbl; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*,int /*<<< orphan*/ ) ; 
 struct pll_freq_tbl* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_pll* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int
FUNC3(struct clk_hw *hw, struct clk_rate_request *req)
{
	struct clk_pll *pll = FUNC2(hw);
	const struct pll_freq_tbl *f;

	f = FUNC1(pll->freq_tbl, req->rate);
	if (!f)
		req->rate = FUNC0(hw, req->best_parent_rate);
	else
		req->rate = f->freq;

	return 0;
}