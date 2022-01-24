#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct si5351_platform_data {TYPE_4__* clkout; int /*<<< orphan*/ * pll_src; } ;
struct TYPE_16__ {int /*<<< orphan*/  clk; struct clk_init_data* init; } ;
struct si5351_driver_data {int variant; char const* pxtal_name; char const* pclkin_name; int num_clkout; TYPE_3__* clkout; TYPE_2__* msynth; TYPE_1__* pll; TYPE_8__ clkin; void* pclkin; TYPE_8__ xtal; void* pxtal; void* regmap; struct i2c_client* client; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; struct si5351_platform_data* platform_data; } ;
struct i2c_client {TYPE_5__ dev; } ;
struct clk_init_data {char const** parent_names; int num_parents; void* name; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;
typedef  int /*<<< orphan*/  init ;
typedef  enum si5351_variant { ____Placeholder_si5351_variant } si5351_variant ;
struct TYPE_14__ {scalar_t__ clkout_src; scalar_t__ rate; scalar_t__ pll_master; int /*<<< orphan*/  disable_state; int /*<<< orphan*/  drive; int /*<<< orphan*/  multisynth_src; } ;
struct TYPE_13__ {int num; TYPE_8__ hw; struct si5351_driver_data* drvdata; } ;
struct TYPE_12__ {int num; TYPE_8__ hw; struct si5351_driver_data* drvdata; } ;
struct TYPE_11__ {int num; TYPE_8__ hw; struct si5351_driver_data* drvdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 scalar_t__ SI5351_CLKOUT_SRC_MSYNTH_N ; 
 int /*<<< orphan*/  SI5351_INTERRUPT_MASK ; 
 int SI5351_PLLA_SOURCE ; 
 int SI5351_PLLB_SOURCE ; 
 int /*<<< orphan*/  SI5351_PLL_INPUT_SOURCE ; 
 scalar_t__ SI5351_VARIANT_A3 ; 
 scalar_t__ SI5351_VARIANT_B ; 
 scalar_t__ SI5351_VARIANT_C ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (void*) ; 
 int FUNC4 (struct si5351_driver_data*,int,scalar_t__) ; 
 int FUNC5 (struct si5351_driver_data*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct si5351_driver_data*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct si5351_driver_data*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct si5351_driver_data*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char*,...) ; 
 void* FUNC11 (TYPE_5__*,char*) ; 
 int FUNC12 (TYPE_5__*,TYPE_8__*) ; 
 void* FUNC13 (TYPE_5__*,int,int,int /*<<< orphan*/ ) ; 
 struct si5351_driver_data* FUNC14 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC15 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*,struct si5351_driver_data*) ; 
 int /*<<< orphan*/  FUNC17 (struct clk_init_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct si5351_driver_data*) ; 
 int /*<<< orphan*/  si53351_of_clk_get ; 
 int /*<<< orphan*/  si5351_clkin_ops ; 
 void** si5351_clkout_names ; 
 int /*<<< orphan*/  si5351_clkout_ops ; 
 int FUNC19 (struct i2c_client*,int) ; 
 void** si5351_input_names ; 
 void** si5351_msynth_names ; 
 int /*<<< orphan*/  si5351_msynth_ops ; 
 void** si5351_pll_names ; 
 int /*<<< orphan*/  si5351_pll_ops ; 
 int /*<<< orphan*/  FUNC20 (struct si5351_driver_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  si5351_regmap_config ; 
 int /*<<< orphan*/  FUNC21 (struct si5351_driver_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  si5351_vxco_ops ; 
 int /*<<< orphan*/  si5351_xtal_ops ; 

__attribute__((used)) static int FUNC22(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	enum si5351_variant variant = (enum si5351_variant)id->driver_data;
	struct si5351_platform_data *pdata;
	struct si5351_driver_data *drvdata;
	struct clk_init_data init;
	const char *parent_names[4];
	u8 num_parents, num_clocks;
	int ret, n;

	ret = FUNC19(client, variant);
	if (ret)
		return ret;

	pdata = client->dev.platform_data;
	if (!pdata)
		return -EINVAL;

	drvdata = FUNC14(&client->dev, sizeof(*drvdata), GFP_KERNEL);
	if (!drvdata)
		return -ENOMEM;

	FUNC16(client, drvdata);
	drvdata->client = client;
	drvdata->variant = variant;
	drvdata->pxtal = FUNC11(&client->dev, "xtal");
	drvdata->pclkin = FUNC11(&client->dev, "clkin");

	if (FUNC1(drvdata->pxtal) == -EPROBE_DEFER ||
	    FUNC1(drvdata->pclkin) == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	/*
	 * Check for valid parent clock: VARIANT_A and VARIANT_B need XTAL,
	 *   VARIANT_C can have CLKIN instead.
	 */
	if (FUNC0(drvdata->pxtal) &&
	    (drvdata->variant != SI5351_VARIANT_C || FUNC0(drvdata->pclkin))) {
		FUNC10(&client->dev, "missing parent clock\n");
		return -EINVAL;
	}

	drvdata->regmap = FUNC15(client, &si5351_regmap_config);
	if (FUNC0(drvdata->regmap)) {
		FUNC10(&client->dev, "failed to allocate register map\n");
		return FUNC1(drvdata->regmap);
	}

	/* Disable interrupts */
	FUNC20(drvdata, SI5351_INTERRUPT_MASK, 0xf0);
	/* Ensure pll select is on XTAL for Si5351A/B */
	if (drvdata->variant != SI5351_VARIANT_C)
		FUNC21(drvdata, SI5351_PLL_INPUT_SOURCE,
				SI5351_PLLA_SOURCE | SI5351_PLLB_SOURCE, 0);

	/* setup clock configuration */
	for (n = 0; n < 2; n++) {
		ret = FUNC8(drvdata, n, pdata->pll_src[n]);
		if (ret) {
			FUNC10(&client->dev,
				"failed to reparent pll %d to %d\n",
				n, pdata->pll_src[n]);
			return ret;
		}
	}

	for (n = 0; n < 8; n++) {
		ret = FUNC7(drvdata, n,
					      pdata->clkout[n].multisynth_src);
		if (ret) {
			FUNC10(&client->dev,
				"failed to reparent multisynth %d to %d\n",
				n, pdata->clkout[n].multisynth_src);
			return ret;
		}

		ret = FUNC4(drvdata, n,
					      pdata->clkout[n].clkout_src);
		if (ret) {
			FUNC10(&client->dev,
				"failed to reparent clkout %d to %d\n",
				n, pdata->clkout[n].clkout_src);
			return ret;
		}

		ret = FUNC6(drvdata, n,
							pdata->clkout[n].drive);
		if (ret) {
			FUNC10(&client->dev,
				"failed set drive strength of clkout%d to %d\n",
				n, pdata->clkout[n].drive);
			return ret;
		}

		ret = FUNC5(drvdata, n,
						pdata->clkout[n].disable_state);
		if (ret) {
			FUNC10(&client->dev,
				"failed set disable state of clkout%d to %d\n",
				n, pdata->clkout[n].disable_state);
			return ret;
		}
	}

	/* register xtal input clock gate */
	FUNC17(&init, 0, sizeof(init));
	init.name = si5351_input_names[0];
	init.ops = &si5351_xtal_ops;
	init.flags = 0;
	if (!FUNC0(drvdata->pxtal)) {
		drvdata->pxtal_name = FUNC3(drvdata->pxtal);
		init.parent_names = &drvdata->pxtal_name;
		init.num_parents = 1;
	}
	drvdata->xtal.init = &init;
	ret = FUNC12(&client->dev, &drvdata->xtal);
	if (ret) {
		FUNC10(&client->dev, "unable to register %s\n", init.name);
		return ret;
	}

	/* register clkin input clock gate */
	if (drvdata->variant == SI5351_VARIANT_C) {
		FUNC17(&init, 0, sizeof(init));
		init.name = si5351_input_names[1];
		init.ops = &si5351_clkin_ops;
		if (!FUNC0(drvdata->pclkin)) {
			drvdata->pclkin_name = FUNC3(drvdata->pclkin);
			init.parent_names = &drvdata->pclkin_name;
			init.num_parents = 1;
		}
		drvdata->clkin.init = &init;
		ret = FUNC12(&client->dev, &drvdata->clkin);
		if (ret) {
			FUNC10(&client->dev, "unable to register %s\n",
				init.name);
			return ret;
		}
	}

	/* Si5351C allows to mux either xtal or clkin to PLL input */
	num_parents = (drvdata->variant == SI5351_VARIANT_C) ? 2 : 1;
	parent_names[0] = si5351_input_names[0];
	parent_names[1] = si5351_input_names[1];

	/* register PLLA */
	drvdata->pll[0].num = 0;
	drvdata->pll[0].drvdata = drvdata;
	drvdata->pll[0].hw.init = &init;
	FUNC17(&init, 0, sizeof(init));
	init.name = si5351_pll_names[0];
	init.ops = &si5351_pll_ops;
	init.flags = 0;
	init.parent_names = parent_names;
	init.num_parents = num_parents;
	ret = FUNC12(&client->dev, &drvdata->pll[0].hw);
	if (ret) {
		FUNC10(&client->dev, "unable to register %s\n", init.name);
		return ret;
	}

	/* register PLLB or VXCO (Si5351B) */
	drvdata->pll[1].num = 1;
	drvdata->pll[1].drvdata = drvdata;
	drvdata->pll[1].hw.init = &init;
	FUNC17(&init, 0, sizeof(init));
	if (drvdata->variant == SI5351_VARIANT_B) {
		init.name = si5351_pll_names[2];
		init.ops = &si5351_vxco_ops;
		init.flags = 0;
		init.parent_names = NULL;
		init.num_parents = 0;
	} else {
		init.name = si5351_pll_names[1];
		init.ops = &si5351_pll_ops;
		init.flags = 0;
		init.parent_names = parent_names;
		init.num_parents = num_parents;
	}
	ret = FUNC12(&client->dev, &drvdata->pll[1].hw);
	if (ret) {
		FUNC10(&client->dev, "unable to register %s\n", init.name);
		return ret;
	}

	/* register clk multisync and clk out divider */
	num_clocks = (drvdata->variant == SI5351_VARIANT_A3) ? 3 : 8;
	parent_names[0] = si5351_pll_names[0];
	if (drvdata->variant == SI5351_VARIANT_B)
		parent_names[1] = si5351_pll_names[2];
	else
		parent_names[1] = si5351_pll_names[1];

	drvdata->msynth = FUNC13(&client->dev, num_clocks,
				       sizeof(*drvdata->msynth), GFP_KERNEL);
	drvdata->clkout = FUNC13(&client->dev, num_clocks,
				       sizeof(*drvdata->clkout), GFP_KERNEL);
	drvdata->num_clkout = num_clocks;

	if (FUNC2(!drvdata->msynth || !drvdata->clkout)) {
		ret = -ENOMEM;
		return ret;
	}

	for (n = 0; n < num_clocks; n++) {
		drvdata->msynth[n].num = n;
		drvdata->msynth[n].drvdata = drvdata;
		drvdata->msynth[n].hw.init = &init;
		FUNC17(&init, 0, sizeof(init));
		init.name = si5351_msynth_names[n];
		init.ops = &si5351_msynth_ops;
		init.flags = 0;
		if (pdata->clkout[n].pll_master)
			init.flags |= CLK_SET_RATE_PARENT;
		init.parent_names = parent_names;
		init.num_parents = 2;
		ret = FUNC12(&client->dev,
					   &drvdata->msynth[n].hw);
		if (ret) {
			FUNC10(&client->dev, "unable to register %s\n",
				init.name);
			return ret;
		}
	}

	num_parents = (drvdata->variant == SI5351_VARIANT_C) ? 4 : 3;
	parent_names[2] = si5351_input_names[0];
	parent_names[3] = si5351_input_names[1];
	for (n = 0; n < num_clocks; n++) {
		parent_names[0] = si5351_msynth_names[n];
		parent_names[1] = (n < 4) ? si5351_msynth_names[0] :
			si5351_msynth_names[4];

		drvdata->clkout[n].num = n;
		drvdata->clkout[n].drvdata = drvdata;
		drvdata->clkout[n].hw.init = &init;
		FUNC17(&init, 0, sizeof(init));
		init.name = si5351_clkout_names[n];
		init.ops = &si5351_clkout_ops;
		init.flags = 0;
		if (pdata->clkout[n].clkout_src == SI5351_CLKOUT_SRC_MSYNTH_N)
			init.flags |= CLK_SET_RATE_PARENT;
		init.parent_names = parent_names;
		init.num_parents = num_parents;
		ret = FUNC12(&client->dev,
					   &drvdata->clkout[n].hw);
		if (ret) {
			FUNC10(&client->dev, "unable to register %s\n",
				init.name);
			return ret;
		}

		/* set initial clkout rate */
		if (pdata->clkout[n].rate != 0) {
			int ret;
			ret = FUNC9(drvdata->clkout[n].hw.clk,
					   pdata->clkout[n].rate);
			if (ret != 0) {
				FUNC10(&client->dev, "Cannot set rate : %d\n",
					ret);
			}
		}
	}

	ret = FUNC18(client->dev.of_node, si53351_of_clk_get,
				     drvdata);
	if (ret) {
		FUNC10(&client->dev, "unable to add clk provider\n");
		return ret;
	}

	return 0;
}