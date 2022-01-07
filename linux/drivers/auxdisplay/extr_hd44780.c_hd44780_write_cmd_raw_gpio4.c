
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd44780 {scalar_t__* pins; } ;
struct charlcd {struct hd44780* drvdata; } ;


 int DECLARE_BITMAP (int*,int) ;
 size_t PIN_CTRL_RW ;
 size_t PIN_DATA4 ;
 int gpiod_set_array_value_cansleep (unsigned int,scalar_t__*,int *,int*) ;
 int hd44780_strobe_gpio (struct hd44780*) ;
 int* values ;

__attribute__((used)) static void hd44780_write_cmd_raw_gpio4(struct charlcd *lcd, int cmd)
{
 DECLARE_BITMAP(values, 6);
 struct hd44780 *hd = lcd->drvdata;
 unsigned int n;


 values[0] = cmd & 0x0f;
 n = hd->pins[PIN_CTRL_RW] ? 6 : 5;


 gpiod_set_array_value_cansleep(n, &hd->pins[PIN_DATA4], ((void*)0), values);

 hd44780_strobe_gpio(hd);
}
