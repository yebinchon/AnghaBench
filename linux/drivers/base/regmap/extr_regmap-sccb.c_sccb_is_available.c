
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dummy; } ;


 int I2C_FUNC_SMBUS_BYTE ;
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ;
 int i2c_get_functionality (struct i2c_adapter*) ;

__attribute__((used)) static bool sccb_is_available(struct i2c_adapter *adap)
{
 u32 needed_funcs = I2C_FUNC_SMBUS_BYTE | I2C_FUNC_SMBUS_WRITE_BYTE_DATA;







 return (i2c_get_functionality(adap) & needed_funcs) == needed_funcs;
}
