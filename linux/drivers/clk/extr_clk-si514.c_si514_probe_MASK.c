#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_10__ {TYPE_1__* of_node; } ;
struct i2c_client {TYPE_4__ dev; } ;
struct TYPE_9__ {struct clk_init_data* init; } ;
struct clk_si514 {TYPE_3__ hw; int /*<<< orphan*/  regmap; struct i2c_client* i2c_client; } ;
struct clk_init_data {int /*<<< orphan*/  name; scalar_t__ num_parents; scalar_t__ flags; int /*<<< orphan*/ * ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 struct clk_si514* FUNC4 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct clk_si514*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  of_clk_hw_simple_get ; 
 scalar_t__ FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  si514_clk_ops ; 
 int /*<<< orphan*/  si514_regmap_config ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct clk_si514 *data;
	struct clk_init_data init;
	int err;

	data = FUNC4(&client->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	init.ops = &si514_clk_ops;
	init.flags = 0;
	init.num_parents = 0;
	data->hw.init = &init;
	data->i2c_client = client;

	if (FUNC8(client->dev.of_node, "clock-output-names",
			&init.name))
		init.name = client->dev.of_node->name;

	data->regmap = FUNC5(client, &si514_regmap_config);
	if (FUNC0(data->regmap)) {
		FUNC2(&client->dev, "failed to allocate register map\n");
		return FUNC1(data->regmap);
	}

	FUNC6(client, data);

	err = FUNC3(&client->dev, &data->hw);
	if (err) {
		FUNC2(&client->dev, "clock registration failed\n");
		return err;
	}
	err = FUNC7(client->dev.of_node, of_clk_hw_simple_get,
				     &data->hw);
	if (err) {
		FUNC2(&client->dev, "unable to add clk provider\n");
		return err;
	}

	return 0;
}