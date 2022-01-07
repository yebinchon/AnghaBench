
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int i2c_smbus_write_byte_data (struct i2c_client*,unsigned int,unsigned int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int regmap_smbus_byte_reg_write(void *context, unsigned int reg,
           unsigned int val)
{
 struct device *dev = context;
 struct i2c_client *i2c = to_i2c_client(dev);

 if (val > 0xff || reg > 0xff)
  return -EINVAL;

 return i2c_smbus_write_byte_data(i2c, reg, val);
}
