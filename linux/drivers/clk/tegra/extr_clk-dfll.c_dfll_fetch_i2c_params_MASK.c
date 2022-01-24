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
struct tegra_dfll {int i2c_reg; int /*<<< orphan*/  dev; int /*<<< orphan*/  vdd_reg; int /*<<< orphan*/  i2c_slave_addr; int /*<<< orphan*/  i2c_fs_rate; } ;
struct regmap {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  addr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_dfll*,char*,int /*<<< orphan*/ *) ; 
 struct device* FUNC2 (struct regmap*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 struct regmap* FUNC4 (int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct tegra_dfll *td)
{
	struct regmap *regmap;
	struct device *i2c_dev;
	struct i2c_client *i2c_client;
	int vsel_reg, vsel_mask;
	int ret;

	if (!FUNC1(td, "nvidia,i2c-fs-rate", &td->i2c_fs_rate))
		return -EINVAL;

	regmap = FUNC4(td->vdd_reg);
	i2c_dev = FUNC2(regmap);
	i2c_client = FUNC5(i2c_dev);

	td->i2c_slave_addr = i2c_client->addr;

	ret = FUNC3(td->vdd_reg,
						   &vsel_reg,
						   &vsel_mask);
	if (ret < 0) {
		FUNC0(td->dev,
			"regulator unsuitable for DFLL I2C operation\n");
		return -EINVAL;
	}
	td->i2c_reg = vsel_reg;

	return 0;
}