
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct broadsheetfb_par {int dummy; } ;





 int CS_GPIO_PIN ;
 int DC_GPIO_PIN ;
 int WR_GPIO_PIN ;
 int gpio_set_value (int ,int ) ;

__attribute__((used)) static void am300_set_ctl(struct broadsheetfb_par *par, unsigned char bit,
    u8 state)
{
 switch (bit) {
 case 130:
  gpio_set_value(CS_GPIO_PIN, state);
  break;
 case 129:
  gpio_set_value(DC_GPIO_PIN, state);
  break;
 case 128:
  gpio_set_value(WR_GPIO_PIN, state);
  break;
 }
}
