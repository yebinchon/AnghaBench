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
union i2c_smbus_data {unsigned int byte; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_LOCK_SEGMENT ; 
 int /*<<< orphan*/  I2C_SMBUS_BYTE ; 
 int /*<<< orphan*/  I2C_SMBUS_READ ; 
 int /*<<< orphan*/  I2C_SMBUS_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,union i2c_smbus_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(void *context, unsigned int reg, unsigned int *val)
{
	struct device *dev = context;
	struct i2c_client *i2c = FUNC3(dev);
	int ret;
	union i2c_smbus_data data;

	FUNC1(i2c->adapter, I2C_LOCK_SEGMENT);

	ret = FUNC0(i2c->adapter, i2c->addr, i2c->flags,
			       I2C_SMBUS_WRITE, reg, I2C_SMBUS_BYTE, NULL);
	if (ret < 0)
		goto out;

	ret = FUNC0(i2c->adapter, i2c->addr, i2c->flags,
			       I2C_SMBUS_READ, 0, I2C_SMBUS_BYTE, &data);
	if (ret < 0)
		goto out;

	*val = data.byte;
out:
	FUNC2(i2c->adapter, I2C_LOCK_SEGMENT);

	return ret;
}