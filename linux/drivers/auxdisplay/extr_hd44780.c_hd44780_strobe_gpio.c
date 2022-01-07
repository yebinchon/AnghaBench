
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd44780 {int * pins; } ;


 size_t PIN_CTRL_E ;
 int gpiod_set_value_cansleep (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void hd44780_strobe_gpio(struct hd44780 *hd)
{

 udelay(20);

 gpiod_set_value_cansleep(hd->pins[PIN_CTRL_E], 1);


 udelay(40);

 gpiod_set_value_cansleep(hd->pins[PIN_CTRL_E], 0);
}
