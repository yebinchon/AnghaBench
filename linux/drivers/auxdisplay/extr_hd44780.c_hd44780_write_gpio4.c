
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hd44780 {scalar_t__* pins; } ;


 int DECLARE_BITMAP (int*,int) ;
 size_t PIN_CTRL_RW ;
 size_t PIN_DATA4 ;
 int __assign_bit (int,int*,unsigned int) ;
 int gpiod_set_array_value_cansleep (unsigned int,scalar_t__*,int *,int*) ;
 int hd44780_strobe_gpio (struct hd44780*) ;
 int* values ;

__attribute__((used)) static void hd44780_write_gpio4(struct hd44780 *hd, u8 val, unsigned int rs)
{
 DECLARE_BITMAP(values, 6);
 unsigned int n;


 values[0] = val >> 4;
 __assign_bit(4, values, rs);
 n = hd->pins[PIN_CTRL_RW] ? 6 : 5;


 gpiod_set_array_value_cansleep(n, &hd->pins[PIN_DATA4], ((void*)0), values);

 hd44780_strobe_gpio(hd);


 values[0] &= ~0x0fUL;
 values[0] |= val & 0x0f;


 gpiod_set_array_value_cansleep(n, &hd->pins[PIN_DATA4], ((void*)0), values);

 hd44780_strobe_gpio(hd);
}
