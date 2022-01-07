
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {size_t len; void* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
struct device {int dummy; } ;


 int EIO ;
 scalar_t__ I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int regmap_i2c_read(void *context,
      const void *reg, size_t reg_size,
      void *val, size_t val_size)
{
 struct device *dev = context;
 struct i2c_client *i2c = to_i2c_client(dev);
 struct i2c_msg xfer[2];
 int ret;

 xfer[0].addr = i2c->addr;
 xfer[0].flags = 0;
 xfer[0].len = reg_size;
 xfer[0].buf = (void *)reg;

 xfer[1].addr = i2c->addr;
 xfer[1].flags = I2C_M_RD;
 xfer[1].len = val_size;
 xfer[1].buf = val;

 ret = i2c_transfer(i2c->adapter, xfer, 2);
 if (ret == 2)
  return 0;
 else if (ret < 0)
  return ret;
 else
  return -EIO;
}
