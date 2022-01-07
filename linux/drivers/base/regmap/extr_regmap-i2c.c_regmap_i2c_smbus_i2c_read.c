
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,size_t,void*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int regmap_i2c_smbus_i2c_read(void *context, const void *reg,
         size_t reg_size, void *val,
         size_t val_size)
{
 struct device *dev = context;
 struct i2c_client *i2c = to_i2c_client(dev);
 int ret;

 if (reg_size != 1 || val_size < 1)
  return -EINVAL;

 ret = i2c_smbus_read_i2c_block_data(i2c, ((u8 *)reg)[0], val_size, val);
 if (ret == val_size)
  return 0;
 else if (ret < 0)
  return ret;
 else
  return -EIO;
}
