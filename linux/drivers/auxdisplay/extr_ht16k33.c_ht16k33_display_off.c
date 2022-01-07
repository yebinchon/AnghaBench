
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ht16k33_priv {int client; } ;


 int REG_DISPLAY_SETUP ;
 int i2c_smbus_write_byte (int ,int ) ;

__attribute__((used)) static int ht16k33_display_off(struct ht16k33_priv *priv)
{
 return i2c_smbus_write_byte(priv->client, REG_DISPLAY_SETUP);
}
