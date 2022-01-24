#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_8__ {struct clk_init_data* init; } ;
struct vexpress_osc {void* rate_max; void* rate_min; TYPE_5__ hw; struct clk* reg; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk_init_data {int /*<<< orphan*/  name; scalar_t__ num_parents; scalar_t__ flags; int /*<<< orphan*/ * ops; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,void*,void*) ; 
 struct clk* FUNC4 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 struct vexpress_osc* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct clk* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk*) ; 
 int /*<<< orphan*/  of_clk_src_simple_get ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vexpress_osc_ops ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct clk_init_data init;
	struct vexpress_osc *osc;
	struct clk *clk;
	u32 range[2];

	osc = FUNC7(&pdev->dev, sizeof(*osc), GFP_KERNEL);
	if (!osc)
		return -ENOMEM;

	osc->reg = FUNC8(&pdev->dev);
	if (FUNC1(osc->reg))
		return FUNC2(osc->reg);

	if (FUNC11(pdev->dev.of_node, "freq-range", range,
			FUNC0(range)) == 0) {
		osc->rate_min = range[0];
		osc->rate_max = range[1];
	}

	if (FUNC10(pdev->dev.of_node, "clock-output-names",
			&init.name) != 0)
		init.name = FUNC6(&pdev->dev);

	init.ops = &vexpress_osc_ops;
	init.flags = 0;
	init.num_parents = 0;

	osc->hw.init = &init;

	clk = FUNC4(NULL, &osc->hw);
	if (FUNC1(clk))
		return FUNC2(clk);

	FUNC9(pdev->dev.of_node, of_clk_src_simple_get, clk);
	FUNC3(&osc->hw, osc->rate_min, osc->rate_max);

	FUNC5(&pdev->dev, "Registered clock '%s'\n", init.name);

	return 0;
}