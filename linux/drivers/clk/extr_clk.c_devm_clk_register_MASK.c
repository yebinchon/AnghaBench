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
struct device {int dummy; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (struct device*,struct clk_hw*) ; 
 int /*<<< orphan*/  devm_clk_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct clk**) ; 
 struct clk** FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct clk**) ; 

struct clk *FUNC6(struct device *dev, struct clk_hw *hw)
{
	struct clk *clk;
	struct clk **clkp;

	clkp = FUNC4(devm_clk_release, sizeof(*clkp), GFP_KERNEL);
	if (!clkp)
		return FUNC0(-ENOMEM);

	clk = FUNC2(dev, hw);
	if (!FUNC1(clk)) {
		*clkp = clk;
		FUNC3(dev, clkp);
	} else {
		FUNC5(clkp);
	}

	return clk;
}