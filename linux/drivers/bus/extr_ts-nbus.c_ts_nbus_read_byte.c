
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ts_nbus {struct gpio_descs* data; } ;
struct gpio_descs {int * desc; } ;


 int BIT (int) ;
 int gpiod_get_value_cansleep (int ) ;

__attribute__((used)) static int ts_nbus_read_byte(struct ts_nbus *ts_nbus, u8 *val)
{
 struct gpio_descs *gpios = ts_nbus->data;
 int ret, i;

 *val = 0;
 for (i = 0; i < 8; i++) {
  ret = gpiod_get_value_cansleep(gpios->desc[i]);
  if (ret < 0)
   return ret;
  if (ret)
   *val |= BIT(i);
 }

 return 0;
}
