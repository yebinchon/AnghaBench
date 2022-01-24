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
struct clk_rcg2 {int /*<<< orphan*/  freq_tbl; } ;
struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int FUNC1 (struct clk_hw*,struct clk_rate_request*) ; 
 int FUNC2 (struct clk_rcg2*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct clk_rcg2* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw,
				   struct clk_rate_request *req)
{
	struct clk_rcg2 *rcg = FUNC4(hw);
	int ret;

	if (!rcg->freq_tbl) {
		ret = FUNC2(rcg);
		if (ret) {
			FUNC3("Failed to update DFS tables for %s\n",
					FUNC0(hw));
			return ret;
		}
	}

	return FUNC1(hw, req);
}