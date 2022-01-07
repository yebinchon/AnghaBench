
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ts_nbus {struct gpio_descs* data; } ;
struct gpio_descs {int info; int desc; } ;


 int DECLARE_BITMAP (int *,int) ;
 int gpiod_set_array_value_cansleep (int,int ,int ,int *) ;
 int * values ;

__attribute__((used)) static void ts_nbus_write_byte(struct ts_nbus *ts_nbus, u8 byte)
{
 struct gpio_descs *gpios = ts_nbus->data;
 DECLARE_BITMAP(values, 8);

 values[0] = byte;

 gpiod_set_array_value_cansleep(8, gpios->desc, gpios->info, values);
}
