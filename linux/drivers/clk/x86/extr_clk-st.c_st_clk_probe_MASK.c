#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct st_clk_data {scalar_t__ base; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CLKDRVSTR2 ; 
 int /*<<< orphan*/  CLK_GATE_SET_TO_DISABLE ; 
 int EINVAL ; 
 scalar_t__ MISCCLKCNTL1 ; 
 int /*<<< orphan*/  OSCCLKENB ; 
 int /*<<< orphan*/  OSCOUT1CLK25MHZ ; 
 size_t ST_CLK_25M ; 
 size_t ST_CLK_48M ; 
 size_t ST_CLK_GATE ; 
 size_t ST_CLK_MUX ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clk_oscout1_parents ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct st_clk_data* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__** hws ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct st_clk_data *st_data;

	st_data = FUNC5(&pdev->dev);
	if (!st_data || !st_data->base)
		return -EINVAL;

	hws[ST_CLK_48M] = FUNC1(NULL, "clk48MHz", NULL, 0,
						     48000000);
	hws[ST_CLK_25M] = FUNC1(NULL, "clk25MHz", NULL, 0,
						     25000000);

	hws[ST_CLK_MUX] = FUNC3(NULL, "oscout1_mux",
		clk_oscout1_parents, FUNC0(clk_oscout1_parents),
		0, st_data->base + CLKDRVSTR2, OSCOUT1CLK25MHZ, 3, 0, NULL);

	FUNC4(hws[ST_CLK_MUX]->clk, hws[ST_CLK_48M]->clk);

	hws[ST_CLK_GATE] = FUNC2(NULL, "oscout1", "oscout1_mux",
		0, st_data->base + MISCCLKCNTL1, OSCCLKENB,
		CLK_GATE_SET_TO_DISABLE, NULL);

	FUNC6(&pdev->dev, hws[ST_CLK_GATE], "oscout1",
				    NULL);

	return 0;
}