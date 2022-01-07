
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct adm6996_priv {int eesk; int eecs; int eedi; } ;
typedef enum admreg { ____Placeholder_admreg } admreg ;


 int adm6996_gpio_adclk (struct adm6996_priv*,int) ;
 int adm6996_gpio_read (struct adm6996_priv*,int ,int*,int) ;
 int adm6996_gpio_write (struct adm6996_priv*,int ,int*,int) ;
 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int ) ;

__attribute__((used)) static u16
adm6996_read_gpio_reg(struct adm6996_priv *priv, enum admreg reg)
{

 u8 bits[6] = {
  0xFF, 0xFF, 0xFF, 0xFF,
  (0x06 << 4) | ((0 & 0x01) << 3 | (reg&64)>>6),
  ((reg&63)<<2)
 };

 u8 rbits[4];


 gpio_direction_output(priv->eecs, 0);
 gpio_direction_output(priv->eesk, 0);
 gpio_direction_output(priv->eedi, 0);

 adm6996_gpio_write(priv, 0, bits, 46);
 gpio_direction_input(priv->eedi);
 adm6996_gpio_adclk(priv, 2);
 adm6996_gpio_read(priv, 0, rbits, 32);


 adm6996_gpio_adclk(priv, 2);


 gpio_direction_input(priv->eecs);
 gpio_direction_input(priv->eesk);


 return (reg & 0x01 ? (rbits[0]<<8) | rbits[1] : (rbits[2]<<8) | (rbits[3]));
}
