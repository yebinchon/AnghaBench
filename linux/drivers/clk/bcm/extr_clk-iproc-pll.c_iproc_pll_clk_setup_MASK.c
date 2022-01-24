#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iproc_pll_vco_param {int dummy; } ;
struct iproc_pll_ctrl {int flags; } ;
struct TYPE_3__ {struct clk_init_data* init; } ;
struct iproc_pll {unsigned int num; scalar_t__ control_base; scalar_t__ pwr_base; scalar_t__ asiu_base; scalar_t__ status_base; unsigned int num_vco_entries; TYPE_1__** hws; TYPE_1__ hw; struct iproc_pll_ctrl const* ctrl; struct iproc_pll* pll; struct iproc_pll_vco_param const* vco_param; } ;
struct iproc_clk_ctrl {int flags; } ;
struct iproc_clk {unsigned int num; scalar_t__ control_base; scalar_t__ pwr_base; scalar_t__ asiu_base; scalar_t__ status_base; unsigned int num_vco_entries; TYPE_1__** hws; TYPE_1__ hw; struct iproc_pll_ctrl const* ctrl; struct iproc_clk* pll; struct iproc_pll_vco_param const* vco_param; } ;
struct device_node {char* name; } ;
struct clk_init_data {char* name; char const** parent_names; int num_parents; scalar_t__ flags; int /*<<< orphan*/ * ops; } ;
struct clk_hw_onecell_data {unsigned int num; scalar_t__ control_base; scalar_t__ pwr_base; scalar_t__ asiu_base; scalar_t__ status_base; unsigned int num_vco_entries; TYPE_1__** hws; TYPE_1__ hw; struct iproc_pll_ctrl const* ctrl; struct clk_hw_onecell_data* pll; struct iproc_pll_vco_param const* vco_param; } ;
typedef  int /*<<< orphan*/  init ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IPROC_CLK_PLL_ASIU ; 
 int IPROC_CLK_PLL_SPLIT_STAT_CTRL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  hws ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  iproc_clk_ops ; 
 int /*<<< orphan*/  iproc_pll_ops ; 
 int /*<<< orphan*/  FUNC4 (struct iproc_pll*) ; 
 struct iproc_pll* FUNC5 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iproc_pll*) ; 
 struct iproc_pll* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct clk_init_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ ,struct iproc_pll*) ; 
 char* FUNC10 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_clk_hw_onecell_get ; 
 void* FUNC11 (struct device_node*,int) ; 
 int FUNC12 (struct device_node*,char*,int,char const**) ; 
 int FUNC13 (struct iproc_pll*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC14(struct device_node *node,
			 const struct iproc_pll_ctrl *pll_ctrl,
			 const struct iproc_pll_vco_param *vco,
			 unsigned int num_vco_entries,
			 const struct iproc_clk_ctrl *clk_ctrl,
			 unsigned int num_clks)
{
	int i, ret;
	struct iproc_pll *pll;
	struct iproc_clk *iclk;
	struct clk_init_data init;
	const char *parent_name;
	struct iproc_clk *iclk_array;
	struct clk_hw_onecell_data *clk_data;

	if (FUNC0(!pll_ctrl) || FUNC0(!clk_ctrl))
		return;

	pll = FUNC7(sizeof(*pll), GFP_KERNEL);
	if (FUNC0(!pll))
		return;

	clk_data = FUNC7(FUNC13(clk_data, hws, num_clks), GFP_KERNEL);
	if (FUNC0(!clk_data))
		goto err_clk_data;
	clk_data->num = num_clks;

	iclk_array = FUNC5(num_clks, sizeof(struct iproc_clk), GFP_KERNEL);
	if (FUNC0(!iclk_array))
		goto err_clks;

	pll->control_base = FUNC11(node, 0);
	if (FUNC0(!pll->control_base))
		goto err_pll_iomap;

	/* Some SoCs do not require the pwr_base, thus failing is not fatal */
	pll->pwr_base = FUNC11(node, 1);

	/* some PLLs require gating control at the top ASIU level */
	if (pll_ctrl->flags & IPROC_CLK_PLL_ASIU) {
		pll->asiu_base = FUNC11(node, 2);
		if (FUNC0(!pll->asiu_base))
			goto err_asiu_iomap;
	}

	if (pll_ctrl->flags & IPROC_CLK_PLL_SPLIT_STAT_CTRL) {
		/* Some SoCs have a split status/control.  If this does not
		 * exist, assume they are unified.
		 */
		pll->status_base = FUNC11(node, 2);
		if (!pll->status_base)
			goto err_status_iomap;
	} else
		pll->status_base = pll->control_base;

	/* initialize and register the PLL itself */
	pll->ctrl = pll_ctrl;

	iclk = &iclk_array[0];
	iclk->pll = pll;

	init.name = node->name;
	init.ops = &iproc_pll_ops;
	init.flags = 0;
	parent_name = FUNC10(node, 0);
	init.parent_names = (parent_name ? &parent_name : NULL);
	init.num_parents = (parent_name ? 1 : 0);
	iclk->hw.init = &init;

	if (vco) {
		pll->num_vco_entries = num_vco_entries;
		pll->vco_param = vco;
	}

	FUNC4(pll);

	ret = FUNC1(NULL, &iclk->hw);
	if (FUNC0(ret))
		goto err_pll_register;

	clk_data->hws[0] = &iclk->hw;

	/* now initialize and register all leaf clocks */
	for (i = 1; i < num_clks; i++) {
		const char *clk_name;

		FUNC8(&init, 0, sizeof(init));
		parent_name = node->name;

		ret = FUNC12(node, "clock-output-names",
						    i, &clk_name);
		if (FUNC0(ret))
			goto err_clk_register;

		iclk = &iclk_array[i];
		iclk->pll = pll;
		iclk->ctrl = &clk_ctrl[i];

		init.name = clk_name;
		init.ops = &iproc_clk_ops;
		init.flags = 0;
		init.parent_names = (parent_name ? &parent_name : NULL);
		init.num_parents = (parent_name ? 1 : 0);
		iclk->hw.init = &init;

		ret = FUNC1(NULL, &iclk->hw);
		if (FUNC0(ret))
			goto err_clk_register;

		clk_data->hws[i] = &iclk->hw;
	}

	ret = FUNC9(node, of_clk_hw_onecell_get, clk_data);
	if (FUNC0(ret))
		goto err_clk_register;

	return;

err_clk_register:
	while (--i >= 0)
		FUNC2(clk_data->hws[i]);

err_pll_register:
	if (pll->status_base != pll->control_base)
		FUNC3(pll->status_base);

err_status_iomap:
	if (pll->asiu_base)
		FUNC3(pll->asiu_base);

err_asiu_iomap:
	if (pll->pwr_base)
		FUNC3(pll->pwr_base);

	FUNC3(pll->control_base);

err_pll_iomap:
	FUNC6(iclk_array);

err_clks:
	FUNC6(clk_data);

err_clk_data:
	FUNC6(pll);
}