
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {unsigned int byte; } ;
struct i2c_client {int adapter; int flags; int addr; } ;
struct device {int dummy; } ;


 int I2C_LOCK_SEGMENT ;
 int I2C_SMBUS_BYTE ;
 int I2C_SMBUS_READ ;
 int I2C_SMBUS_WRITE ;
 int __i2c_smbus_xfer (int ,int ,int ,int ,unsigned int,int ,union i2c_smbus_data*) ;
 int i2c_lock_bus (int ,int ) ;
 int i2c_unlock_bus (int ,int ) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int regmap_sccb_read(void *context, unsigned int reg, unsigned int *val)
{
 struct device *dev = context;
 struct i2c_client *i2c = to_i2c_client(dev);
 int ret;
 union i2c_smbus_data data;

 i2c_lock_bus(i2c->adapter, I2C_LOCK_SEGMENT);

 ret = __i2c_smbus_xfer(i2c->adapter, i2c->addr, i2c->flags,
          I2C_SMBUS_WRITE, reg, I2C_SMBUS_BYTE, ((void*)0));
 if (ret < 0)
  goto out;

 ret = __i2c_smbus_xfer(i2c->adapter, i2c->addr, i2c->flags,
          I2C_SMBUS_READ, 0, I2C_SMBUS_BYTE, &data);
 if (ret < 0)
  goto out;

 *val = data.byte;
out:
 i2c_unlock_bus(i2c->adapter, I2C_LOCK_SEGMENT);

 return ret;
}
