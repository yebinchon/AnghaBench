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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk_plt_fixed {int /*<<< orphan*/  clk; int /*<<< orphan*/  lookup; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct clk_plt_fixed* FUNC0 (int /*<<< orphan*/ ) ; 
 struct clk_plt_fixed* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 struct clk_plt_fixed* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct clk_plt_fixed *FUNC7(struct platform_device *pdev,
						 const char *name,
						 const char *parent_name,
						 unsigned long fixed_rate)
{
	struct clk_plt_fixed *pclk;

	pclk = FUNC6(&pdev->dev, sizeof(*pclk), GFP_KERNEL);
	if (!pclk)
		return FUNC1(-ENOMEM);

	pclk->clk = FUNC3(&pdev->dev, name, parent_name,
					       0, fixed_rate);
	if (FUNC2(pclk->clk))
		return FUNC0(pclk->clk);

	pclk->lookup = FUNC5(pclk->clk, name, NULL);
	if (!pclk->lookup) {
		FUNC4(pclk->clk);
		return FUNC1(-ENOMEM);
	}

	return pclk;
}