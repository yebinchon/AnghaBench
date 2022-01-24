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
struct TYPE_2__ {struct clk_hw** hws; } ;
struct s3c24xx_dclk {int /*<<< orphan*/  dclk0_div_change_nb; int /*<<< orphan*/  dclk1_div_change_nb; TYPE_1__ clk_data; } ;
struct platform_device {int dummy; } ;
struct clk_hw {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int DCLK_MAX_CLKS ; 
 size_t DIV_DCLK0 ; 
 size_t DIV_DCLK1 ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct s3c24xx_dclk* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct s3c24xx_dclk *s3c24xx_dclk = FUNC2(pdev);
	struct clk_hw **clk_table = s3c24xx_dclk->clk_data.hws;
	int i;

	FUNC1(clk_table[DIV_DCLK1]->clk,
				&s3c24xx_dclk->dclk1_div_change_nb);
	FUNC1(clk_table[DIV_DCLK0]->clk,
				&s3c24xx_dclk->dclk0_div_change_nb);

	for (i = 0; i < DCLK_MAX_CLKS; i++)
		FUNC0(clk_table[i]);

	return 0;
}