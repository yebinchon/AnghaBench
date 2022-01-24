#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_17__ {TYPE_2__* of_node; } ;
struct i2c_client {TYPE_5__ dev; } ;
struct clk_si5341_output_config {int out_format_drv_bits; int out_cm_ampl_bits; scalar_t__ always_on; scalar_t__ synth_master; } ;
struct TYPE_18__ {int /*<<< orphan*/  clk; struct clk_init_data* init; } ;
struct clk_si5341 {char const* pxtal_name; unsigned int num_synth; unsigned int num_outputs; int /*<<< orphan*/  regmap; TYPE_12__* clk; TYPE_1__* synth; TYPE_9__ hw; int /*<<< orphan*/  pxtal; struct i2c_client* i2c_client; } ;
struct clk_init_data {char* name; char const** parent_names; int num_parents; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;
struct TYPE_16__ {char* name; } ;
struct TYPE_15__ {unsigned int index; TYPE_9__ hw; struct clk_si5341* data; } ;
struct TYPE_14__ {unsigned int index; TYPE_9__ hw; struct clk_si5341* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int SI5341_MAX_NUM_OUTPUTS ; 
 int SI5341_NUM_SYNTH ; 
 int /*<<< orphan*/  FUNC3 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_12__*) ; 
 char const* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,char*) ; 
 int FUNC10 (TYPE_5__*,TYPE_9__*) ; 
 char* FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,void*) ; 
 struct clk_si5341* FUNC13 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*,struct clk_si5341*) ; 
 char const* FUNC16 (int /*<<< orphan*/ ,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 int FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,struct clk_si5341*) ; 
 int /*<<< orphan*/  of_clk_si5341_get ; 
 scalar_t__ FUNC19 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC20 (TYPE_2__*,char*,char**) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  si5341_clk_ops ; 
 int FUNC24 (struct i2c_client*,struct clk_si5341_output_config*) ; 
 int FUNC25 (struct clk_si5341*) ; 
 int FUNC26 (struct clk_si5341*) ; 
 int FUNC27 (struct clk_si5341*) ; 
 int /*<<< orphan*/  si5341_output_clk_ops ; 
 int FUNC28 (struct clk_si5341*) ; 
 int FUNC29 (struct clk_si5341*) ; 
 int /*<<< orphan*/  si5341_reg_defaults ; 
 int /*<<< orphan*/  si5341_regmap_config ; 
 int FUNC30 (struct clk_si5341*) ; 
 int /*<<< orphan*/  si5341_synth_clk_ops ; 
 int FUNC31 (struct clk_si5341*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC32(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct clk_si5341 *data;
	struct clk_init_data init;
	const char *root_clock_name;
	const char *synth_clock_names[SI5341_NUM_SYNTH];
	int err;
	unsigned int i;
	struct clk_si5341_output_config config[SI5341_MAX_NUM_OUTPUTS];
	bool initialization_required;

	data = FUNC13(&client->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->i2c_client = client;

	data->pxtal = FUNC9(&client->dev, "xtal");
	if (FUNC1(data->pxtal)) {
		if (FUNC2(data->pxtal) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		FUNC8(&client->dev, "Missing xtal clock input\n");
	}

	err = FUNC24(client, config);
	if (err)
		return err;

	if (FUNC20(client->dev.of_node, "clock-output-names",
			&init.name))
		init.name = client->dev.of_node->name;
	root_clock_name = init.name;

	data->regmap = FUNC14(client, &si5341_regmap_config);
	if (FUNC1(data->regmap))
		return FUNC2(data->regmap);

	FUNC15(client, data);

	err = FUNC28(data);
	if (err < 0)
		return err;

	/* "Activate" the xtal (usually a fixed clock) */
	FUNC7(data->pxtal);

	if (FUNC19(client->dev.of_node, "silabs,reprogram")) {
		initialization_required = true;
	} else {
		err = FUNC27(data);
		if (err < 0)
			return err;

		initialization_required = !err;
	}

	if (initialization_required) {
		/* Populate the regmap cache in preparation for "cache only" */
		err = FUNC29(data);
		if (err < 0)
			return err;

		err = FUNC30(data);
		if (err < 0)
			return err;

		/*
		 * We intend to send all 'final' register values in a single
		 * transaction. So cache all register writes until we're done
		 * configuring.
		 */
		FUNC21(data->regmap, true);

		/* Write the configuration pairs from the firmware blob */
		err = FUNC31(data, si5341_reg_defaults,
					FUNC0(si5341_reg_defaults));
		if (err < 0)
			return err;

		/* PLL configuration is required */
		err = FUNC26(data);
		if (err < 0)
			return err;
	}

	/* Register the PLL */
	data->pxtal_name = FUNC5(data->pxtal);
	init.parent_names = &data->pxtal_name;
	init.num_parents = 1; /* For now, only XTAL input supported */
	init.ops = &si5341_clk_ops;
	init.flags = 0;
	data->hw.init = &init;

	err = FUNC10(&client->dev, &data->hw);
	if (err) {
		FUNC8(&client->dev, "clock registration failed\n");
		return err;
	}

	init.num_parents = 1;
	init.parent_names = &root_clock_name;
	init.ops = &si5341_synth_clk_ops;
	for (i = 0; i < data->num_synth; ++i) {
		synth_clock_names[i] = FUNC11(&client->dev, GFP_KERNEL,
				"%s.N%u", client->dev.of_node->name, i);
		init.name = synth_clock_names[i];
		data->synth[i].index = i;
		data->synth[i].data = data;
		data->synth[i].hw.init = &init;
		err = FUNC10(&client->dev, &data->synth[i].hw);
		if (err) {
			FUNC8(&client->dev,
				"synth N%u registration failed\n", i);
		}
	}

	init.num_parents = data->num_synth;
	init.parent_names = synth_clock_names;
	init.ops = &si5341_output_clk_ops;
	for (i = 0; i < data->num_outputs; ++i) {
		init.name = FUNC16(GFP_KERNEL, "%s.%d",
			client->dev.of_node->name, i);
		init.flags = config[i].synth_master ? CLK_SET_RATE_PARENT : 0;
		data->clk[i].index = i;
		data->clk[i].data = data;
		data->clk[i].hw.init = &init;
		if (config[i].out_format_drv_bits & 0x07) {
			FUNC23(data->regmap,
				FUNC4(&data->clk[i]),
				config[i].out_format_drv_bits);
			FUNC23(data->regmap,
				FUNC3(&data->clk[i]),
				config[i].out_cm_ampl_bits);
		}
		err = FUNC10(&client->dev, &data->clk[i].hw);
		FUNC17(init.name); /* clock framework made a copy of the name */
		if (err) {
			FUNC8(&client->dev,
				"output %u registration failed\n", i);
			return err;
		}
		if (config[i].always_on)
			FUNC6(data->clk[i].hw.clk);
	}

	err = FUNC18(client->dev.of_node, of_clk_si5341_get,
			data);
	if (err) {
		FUNC8(&client->dev, "unable to add clk provider\n");
		return err;
	}

	if (initialization_required) {
		/* Synchronize */
		FUNC21(data->regmap, false);
		err = FUNC22(data->regmap);
		if (err < 0)
			return err;

		err = FUNC25(data);
		if (err < 0)
			return err;
	}

	/* Free the names, clk framework makes copies */
	for (i = 0; i < data->num_synth; ++i)
		 FUNC12(&client->dev, (void *)synth_clock_names[i]);

	return 0;
}