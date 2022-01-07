
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int dummy; } ;


 scalar_t__ GSP_REG_CURRENT ;
 scalar_t__ GSP_REG_TEMP_IN ;
 int i2c_smbus_read_byte_data (struct i2c_client*,scalar_t__) ;

__attribute__((used)) static inline int gsp_read(struct i2c_client *client, u8 reg)
{
 unsigned int adc = 0;
 if (reg == GSP_REG_TEMP_IN || reg > GSP_REG_CURRENT)
 {
  adc |= i2c_smbus_read_byte_data(client, reg);
  adc |= i2c_smbus_read_byte_data(client, reg + 1) << 8;
  return adc;
 }
 else
 {
  adc |= i2c_smbus_read_byte_data(client, reg);
  adc |= i2c_smbus_read_byte_data(client, reg + 1) << 8;
  adc |= i2c_smbus_read_byte_data(client, reg + 2) << 16;
  return adc;
 }
}
