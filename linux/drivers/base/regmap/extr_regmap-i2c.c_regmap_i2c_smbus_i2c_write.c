
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int i2c_smbus_write_i2c_block_data (struct i2c_client*,int ,size_t,int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int regmap_i2c_smbus_i2c_write(void *context, const void *data,
          size_t count)
{
 struct device *dev = context;
 struct i2c_client *i2c = to_i2c_client(dev);

 if (count < 1)
  return -EINVAL;

 --count;
 return i2c_smbus_write_i2c_block_data(i2c, ((u8 *)data)[0], count,
           ((u8 *)data + 1));
}
