
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,unsigned int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int regmap_smbus_word_read_swapped(void *context, unsigned int reg,
       unsigned int *val)
{
 struct device *dev = context;
 struct i2c_client *i2c = to_i2c_client(dev);
 int ret;

 if (reg > 0xff)
  return -EINVAL;

 ret = i2c_smbus_read_word_swapped(i2c, reg);
 if (ret < 0)
  return ret;

 *val = ret;

 return 0;
}
