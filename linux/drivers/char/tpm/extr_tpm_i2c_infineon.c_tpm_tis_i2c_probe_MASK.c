#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; int /*<<< orphan*/  adapter; } ;
struct TYPE_2__ {struct i2c_client* client; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ tpm_dev ; 
 int FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	int rc;
	struct device *dev = &(client->dev);

	if (tpm_dev.client != NULL) {
		FUNC0(dev, "This driver only supports one client at a time\n");
		return -EBUSY;	/* We only support one client */
	}

	if (!FUNC1(client->adapter, I2C_FUNC_I2C)) {
		FUNC0(dev, "no algorithms associated to the i2c bus\n");
		return -ENODEV;
	}

	tpm_dev.client = client;
	rc = FUNC2(&client->dev);
	if (rc != 0) {
		tpm_dev.client = NULL;
		rc = -ENODEV;
	}
	return rc;
}