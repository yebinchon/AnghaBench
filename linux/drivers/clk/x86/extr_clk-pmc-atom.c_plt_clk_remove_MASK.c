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
struct platform_device {int dummy; } ;
struct clk_plt_data {int /*<<< orphan*/  mclk_lookup; int /*<<< orphan*/  ether_clk_lookup; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMC_CLK_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct clk_plt_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_plt_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_plt_data*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct clk_plt_data *data;

	data = FUNC1(pdev);

	FUNC0(data->ether_clk_lookup);
	FUNC0(data->mclk_lookup);
	FUNC2(data, PMC_CLK_NUM);
	FUNC3(data);
	return 0;
}