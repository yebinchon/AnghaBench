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
struct clk_onecell_data {unsigned int clk_num; int /*<<< orphan*/ * clks; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_onecell_data*) ; 
 struct clk_onecell_data* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct clk_onecell_data *FUNC4(unsigned int clk_num)
{
	int i;
	struct clk_onecell_data *clk_data;

	clk_data = FUNC3(sizeof(*clk_data), GFP_KERNEL);
	if (!clk_data)
		return NULL;

	clk_data->clks = FUNC1(clk_num, sizeof(*clk_data->clks), GFP_KERNEL);
	if (!clk_data->clks)
		goto err_out;

	clk_data->clk_num = clk_num;

	for (i = 0; i < clk_num; i++)
		clk_data->clks[i] = FUNC0(-ENOENT);

	return clk_data;
err_out:
	FUNC2(clk_data);

	return NULL;
}