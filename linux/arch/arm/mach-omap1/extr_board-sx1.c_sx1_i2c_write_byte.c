
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct i2c_msg {int len; unsigned char* buf; scalar_t__ flags; void* addr; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 struct i2c_adapter* i2c_get_adapter (int ) ;
 int i2c_put_adapter (struct i2c_adapter*) ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

int sx1_i2c_write_byte(u8 devaddr, u8 regoffset, u8 value)
{
 struct i2c_adapter *adap;
 int err;
 struct i2c_msg msg[1];
 unsigned char data[2];

 adap = i2c_get_adapter(0);
 if (!adap)
  return -ENODEV;
 msg->addr = devaddr;
 msg->flags = 0;
 msg->len = 2;
 msg->buf = data;
 data[0] = regoffset;
 data[1] = value;
 err = i2c_transfer(adap, msg, 1);
 i2c_put_adapter(adap);
 if (err >= 0)
  return 0;
 return err;
}
