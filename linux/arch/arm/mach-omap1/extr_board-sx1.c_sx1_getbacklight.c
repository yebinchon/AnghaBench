
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SOFIA_BACKLIGHT_REG ;
 int SOFIA_I2C_ADDR ;
 int sx1_i2c_read_byte (int ,int ,int *) ;

int sx1_getbacklight (u8 * backlight)
{
 return sx1_i2c_read_byte(SOFIA_I2C_ADDR, SOFIA_BACKLIGHT_REG,
     backlight);
}
