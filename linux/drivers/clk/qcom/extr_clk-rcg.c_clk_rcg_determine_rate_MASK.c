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
struct TYPE_2__ {int /*<<< orphan*/  parent_map; } ;
struct clk_rcg {TYPE_1__ s; int /*<<< orphan*/  freq_tbl; } ;
struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct clk_hw*,int /*<<< orphan*/ ,struct clk_rate_request*,int /*<<< orphan*/ ) ; 
 struct clk_rcg* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw,
				  struct clk_rate_request *req)
{
	struct clk_rcg *rcg = FUNC1(hw);

	return FUNC0(hw, rcg->freq_tbl, req,
					rcg->s.parent_map);
}