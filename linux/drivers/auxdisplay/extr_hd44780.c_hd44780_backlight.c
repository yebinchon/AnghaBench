
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd44780 {scalar_t__* pins; } ;
struct charlcd {struct hd44780* drvdata; } ;


 size_t PIN_CTRL_BL ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;

__attribute__((used)) static void hd44780_backlight(struct charlcd *lcd, int on)
{
 struct hd44780 *hd = lcd->drvdata;

 if (hd->pins[PIN_CTRL_BL])
  gpiod_set_value_cansleep(hd->pins[PIN_CTRL_BL], on);
}
