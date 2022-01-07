
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dfll {int i2c_reg; int dev; int vdd_reg; int i2c_slave_addr; int i2c_fs_rate; } ;
struct regmap {int dummy; } ;
struct i2c_client {int addr; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int read_dt_param (struct tegra_dfll*,char*,int *) ;
 struct device* regmap_get_device (struct regmap*) ;
 int regulator_get_hardware_vsel_register (int ,int*,int*) ;
 struct regmap* regulator_get_regmap (int ) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int dfll_fetch_i2c_params(struct tegra_dfll *td)
{
 struct regmap *regmap;
 struct device *i2c_dev;
 struct i2c_client *i2c_client;
 int vsel_reg, vsel_mask;
 int ret;

 if (!read_dt_param(td, "nvidia,i2c-fs-rate", &td->i2c_fs_rate))
  return -EINVAL;

 regmap = regulator_get_regmap(td->vdd_reg);
 i2c_dev = regmap_get_device(regmap);
 i2c_client = to_i2c_client(i2c_dev);

 td->i2c_slave_addr = i2c_client->addr;

 ret = regulator_get_hardware_vsel_register(td->vdd_reg,
         &vsel_reg,
         &vsel_mask);
 if (ret < 0) {
  dev_err(td->dev,
   "regulator unsuitable for DFLL I2C operation\n");
  return -EINVAL;
 }
 td->i2c_reg = vsel_reg;

 return 0;
}
