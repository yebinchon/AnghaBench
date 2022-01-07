
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ht16k33_priv {int client; } ;


 int REG_DISPLAY_SETUP ;
 int REG_DISPLAY_SETUP_ON ;
 int i2c_smbus_write_byte (int ,int) ;

__attribute__((used)) static int ht16k33_display_on(struct ht16k33_priv *priv)
{
 uint8_t data = REG_DISPLAY_SETUP | REG_DISPLAY_SETUP_ON;

 return i2c_smbus_write_byte(priv->client, data);
}
