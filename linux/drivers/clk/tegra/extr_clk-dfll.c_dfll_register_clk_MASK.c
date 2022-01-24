#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* init; } ;
struct tegra_dfll {int /*<<< orphan*/  dfll_clk; TYPE_2__* dev; TYPE_4__ dfll_clk_hw; int /*<<< orphan*/  output_clock_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 TYPE_1__ dfll_clk_init_data ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_clk_src_simple_get ; 

__attribute__((used)) static int FUNC5(struct tegra_dfll *td)
{
	int ret;

	dfll_clk_init_data.name = td->output_clock_name;
	td->dfll_clk_hw.init = &dfll_clk_init_data;

	td->dfll_clk = FUNC1(td->dev, &td->dfll_clk_hw);
	if (FUNC0(td->dfll_clk)) {
		FUNC3(td->dev, "DFLL clock registration error\n");
		return -EINVAL;
	}

	ret = FUNC4(td->dev->of_node, of_clk_src_simple_get,
				  td->dfll_clk);
	if (ret) {
		FUNC3(td->dev, "of_clk_add_provider() failed\n");

		FUNC2(td->dfll_clk);
		return ret;
	}

	return 0;
}