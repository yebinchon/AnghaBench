#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct max9485_driver_data {TYPE_2__* hw; int /*<<< orphan*/  reg_value; struct i2c_client* client; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  supply; int /*<<< orphan*/  xclk; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_8__ {TYPE_1__* init; } ;
struct TYPE_7__ {int parent_index; char const* name; int /*<<< orphan*/  enable_bit; int /*<<< orphan*/  ops; } ;
struct TYPE_5__ {char const* name; int num_parents; char const** parent_names; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;
struct TYPE_6__ {TYPE_4__ hw; struct max9485_driver_data* drvdata; TYPE_1__ init; int /*<<< orphan*/  enable_bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX9485_NUM_CLKS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct max9485_driver_data* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,struct max9485_driver_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 int FUNC10 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct max9485_driver_data*) ; 
 TYPE_3__* max9485_clks ; 
 int /*<<< orphan*/  max9485_of_clk_get ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*,int,char const**) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct max9485_driver_data *drvdata;
	struct device *dev = &client->dev;
	const char *xclk_name;
	int i, ret;

	drvdata = FUNC7(dev, sizeof(*drvdata), GFP_KERNEL);
	if (!drvdata)
		return -ENOMEM;

	drvdata->xclk = FUNC4(dev, "xclk");
	if (FUNC0(drvdata->xclk))
		return FUNC1(drvdata->xclk);

	xclk_name = FUNC2(drvdata->xclk);

	drvdata->supply = FUNC9(dev, "vdd");
	if (FUNC0(drvdata->supply))
		return FUNC1(drvdata->supply);

	ret = FUNC13(drvdata->supply);
	if (ret < 0)
		return ret;

	drvdata->reset_gpio =
		FUNC6(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC0(drvdata->reset_gpio))
		return FUNC1(drvdata->reset_gpio);

	FUNC11(client, drvdata);
	drvdata->client = client;

	ret = FUNC10(drvdata->client, &drvdata->reg_value,
			      sizeof(drvdata->reg_value));
	if (ret < 0) {
		FUNC3(dev, "Unable to read device register: %d\n", ret);
		return ret;
	}

	for (i = 0; i < MAX9485_NUM_CLKS; i++) {
		int parent_index = max9485_clks[i].parent_index;
		const char *name;

		if (FUNC12(dev->of_node,
						  "clock-output-names",
						  i, &name) == 0) {
			drvdata->hw[i].init.name = name;
		} else {
			drvdata->hw[i].init.name = max9485_clks[i].name;
		}

		drvdata->hw[i].init.ops = &max9485_clks[i].ops;
		drvdata->hw[i].init.num_parents = 1;
		drvdata->hw[i].init.flags = 0;

		if (parent_index > 0) {
			drvdata->hw[i].init.parent_names =
				&drvdata->hw[parent_index].init.name;
			drvdata->hw[i].init.flags |= CLK_SET_RATE_PARENT;
		} else {
			drvdata->hw[i].init.parent_names = &xclk_name;
		}

		drvdata->hw[i].enable_bit = max9485_clks[i].enable_bit;
		drvdata->hw[i].hw.init = &drvdata->hw[i].init;
		drvdata->hw[i].drvdata = drvdata;

		ret = FUNC5(dev, &drvdata->hw[i].hw);
		if (ret < 0)
			return ret;
	}

	return FUNC8(dev, max9485_of_clk_get, drvdata);
}