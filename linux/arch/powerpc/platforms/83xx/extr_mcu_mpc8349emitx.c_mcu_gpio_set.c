
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mcu {int reg_ctrl; int lock; int client; } ;
struct gpio_chip {int dummy; } ;


 int MCU_REG_CTRL ;
 struct mcu* gpiochip_get_data (struct gpio_chip*) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mcu_gpio_set(struct gpio_chip *gc, unsigned int gpio, int val)
{
 struct mcu *mcu = gpiochip_get_data(gc);
 u8 bit = 1 << (4 + gpio);

 mutex_lock(&mcu->lock);
 if (val)
  mcu->reg_ctrl &= ~bit;
 else
  mcu->reg_ctrl |= bit;

 i2c_smbus_write_byte_data(mcu->client, MCU_REG_CTRL, mcu->reg_ctrl);
 mutex_unlock(&mcu->lock);
}
