#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_13__ {TYPE_1__* of_node; } ;
struct i2c_client {TYPE_6__ dev; } ;
struct TYPE_12__ {int /*<<< orphan*/  clk; struct clk_init_data* init; } ;
struct clk_si570 {int /*<<< orphan*/  frequency; TYPE_5__ hw; int /*<<< orphan*/  regmap; int /*<<< orphan*/  max_freq; int /*<<< orphan*/  div_offset; struct i2c_client* i2c_client; } ;
struct clk_init_data {int /*<<< orphan*/  name; scalar_t__ num_parents; scalar_t__ flags; int /*<<< orphan*/ * ops; } ;
typedef  enum clk_si570_variant { ____Placeholder_clk_si570_variant } clk_si570_variant ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SI570_DIV_OFFSET_7PPM ; 
 int /*<<< orphan*/  SI570_MAX_FREQ ; 
 int /*<<< orphan*/  SI598_MAX_FREQ ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_6__*,TYPE_5__*) ; 
 struct clk_si570* FUNC6 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct clk_si570*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  of_clk_hw_simple_get ; 
 scalar_t__ FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_1__*,char*,int*) ; 
 int /*<<< orphan*/  si570_clk_ops ; 
 int FUNC13 (struct clk_si570*,int) ; 
 int /*<<< orphan*/  si570_regmap_config ; 
 int si57x ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct clk_si570 *data;
	struct clk_init_data init;
	u32 initial_fout, factory_fout, stability;
	int err;
	enum clk_si570_variant variant = id->driver_data;

	data = FUNC6(&client->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	init.ops = &si570_clk_ops;
	init.flags = 0;
	init.num_parents = 0;
	data->hw.init = &init;
	data->i2c_client = client;

	if (variant == si57x) {
		err = FUNC12(client->dev.of_node,
				"temperature-stability", &stability);
		if (err) {
			FUNC3(&client->dev,
				  "'temperature-stability' property missing\n");
			return err;
		}
		/* adjust register offsets for 7ppm devices */
		if (stability == 7)
			data->div_offset = SI570_DIV_OFFSET_7PPM;

		data->max_freq = SI570_MAX_FREQ;
	} else {
		data->max_freq = SI598_MAX_FREQ;
	}

	if (FUNC11(client->dev.of_node, "clock-output-names",
			&init.name))
		init.name = client->dev.of_node->name;

	err = FUNC12(client->dev.of_node, "factory-fout",
			&factory_fout);
	if (err) {
		FUNC3(&client->dev, "'factory-fout' property missing\n");
		return err;
	}

	data->regmap = FUNC7(client, &si570_regmap_config);
	if (FUNC0(data->regmap)) {
		FUNC3(&client->dev, "failed to allocate register map\n");
		return FUNC1(data->regmap);
	}

	FUNC8(client, data);
	err = FUNC13(data, factory_fout);
	if (err)
		return err;

	err = FUNC5(&client->dev, &data->hw);
	if (err) {
		FUNC3(&client->dev, "clock registration failed\n");
		return err;
	}
	err = FUNC9(client->dev.of_node, of_clk_hw_simple_get,
				     &data->hw);
	if (err) {
		FUNC3(&client->dev, "unable to add clk provider\n");
		return err;
	}

	/* Read the requested initial output frequency from device tree */
	if (!FUNC12(client->dev.of_node, "clock-frequency",
				&initial_fout)) {
		err = FUNC2(data->hw.clk, initial_fout);
		if (err) {
			FUNC10(client->dev.of_node);
			return err;
		}
	}

	/* Display a message indicating that we've successfully registered */
	FUNC4(&client->dev, "registered, current frequency %llu Hz\n",
			data->frequency);

	return 0;
}