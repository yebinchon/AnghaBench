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
struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_1__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct cdce706_dev_data {int /*<<< orphan*/  regmap; struct i2c_client* client; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cdce706_dev_data*) ; 
 int FUNC2 (struct cdce706_dev_data*) ; 
 int FUNC3 (struct cdce706_dev_data*) ; 
 int FUNC4 (struct cdce706_dev_data*) ; 
 int /*<<< orphan*/  cdce706_regmap_config ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 struct cdce706_dev_data* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct cdce706_dev_data*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cdce706_dev_data*) ; 
 int /*<<< orphan*/  of_clk_cdce_get ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct cdce706_dev_data *cdce;
	int ret;

	if (!FUNC8(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	cdce = FUNC6(&client->dev, sizeof(*cdce), GFP_KERNEL);
	if (!cdce)
		return -ENOMEM;

	cdce->client = client;
	cdce->regmap = FUNC7(client, &cdce706_regmap_config);
	if (FUNC0(cdce->regmap)) {
		FUNC5(&client->dev, "Failed to initialize regmap\n");
		return -EINVAL;
	}

	FUNC9(client, cdce);

	ret = FUNC1(cdce);
	if (ret < 0)
		return ret;
	ret = FUNC4(cdce);
	if (ret < 0)
		return ret;
	ret = FUNC3(cdce);
	if (ret < 0)
		return ret;
	ret = FUNC2(cdce);
	if (ret < 0)
		return ret;
	return FUNC10(client->dev.of_node, of_clk_cdce_get,
				      cdce);
}