#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mcu {int reg_ctrl; struct i2c_client* client; int /*<<< orphan*/  lock; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MCU_REG_CTRL ; 
 int /*<<< orphan*/  dev_attr_status ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mcu* glob_mcu ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct mcu*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mcu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct mcu* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mcu*) ; 
 scalar_t__ mcu_power_off ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ pm_power_off ; 
 int /*<<< orphan*/  shutdown_thread ; 
 int /*<<< orphan*/  shutdown_thread_fn ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct mcu *mcu;
	int ret;

	mcu = FUNC7(sizeof(*mcu), GFP_KERNEL);
	if (!mcu)
		return -ENOMEM;

	FUNC9(&mcu->lock);
	mcu->client = client;
	FUNC3(client, mcu);

	ret = FUNC4(mcu->client, MCU_REG_CTRL);
	if (ret < 0)
		goto err;
	mcu->reg_ctrl = ret;

	ret = FUNC8(mcu);
	if (ret)
		goto err;

	/* XXX: this is potentially racy, but there is no lock for pm_power_off */
	if (!pm_power_off) {
		glob_mcu = mcu;
		pm_power_off = mcu_power_off;
		FUNC1(&client->dev, "will provide power-off service\n");
	}

	if (FUNC2(&client->dev, &dev_attr_status))
		FUNC0(&client->dev,
			"couldn't create device file for status\n");

	shutdown_thread = FUNC6(shutdown_thread_fn, NULL,
				      "mcu-i2c-shdn");

	return 0;
err:
	FUNC5(mcu);
	return ret;
}