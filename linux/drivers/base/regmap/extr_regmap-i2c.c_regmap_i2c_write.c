
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int EIO ;
 int i2c_master_send (struct i2c_client*,void const*,size_t) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int regmap_i2c_write(void *context, const void *data, size_t count)
{
 struct device *dev = context;
 struct i2c_client *i2c = to_i2c_client(dev);
 int ret;

 ret = i2c_master_send(i2c, data, count);
 if (ret == count)
  return 0;
 else if (ret < 0)
  return ret;
 else
  return -EIO;
}
