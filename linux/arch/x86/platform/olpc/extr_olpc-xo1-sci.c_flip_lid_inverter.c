
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_INPUT_INVERT ;
 int OLPC_GPIO_LID ;
 int cs5535_gpio_clear (int ,int ) ;
 int cs5535_gpio_set (int ,int ) ;
 int lid_inverted ;

__attribute__((used)) static void flip_lid_inverter(void)
{

 if (lid_inverted)
  cs5535_gpio_clear(OLPC_GPIO_LID, GPIO_INPUT_INVERT);
 else
  cs5535_gpio_set(OLPC_GPIO_LID, GPIO_INPUT_INVERT);
 lid_inverted = !lid_inverted;
}
