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
struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;
struct alchemy_fgcs_clk {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (struct clk_hw*,struct clk_rate_request*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct alchemy_fgcs_clk* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw,
				 struct clk_rate_request *req)
{
	struct alchemy_fgcs_clk *c = FUNC2(hw);
	int scale, maxdiv;

	if (FUNC1(c->reg) & (1 << 30)) {
		scale = 1;
		maxdiv = 256;
	} else {
		scale = 2;
		maxdiv = 512;
	}

	return FUNC0(hw, req, scale, maxdiv);
}