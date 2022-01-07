
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ts_nbus {int ale; int strobe; int csn; TYPE_1__* data; } ;
struct TYPE_2__ {int info; int desc; } ;


 int DECLARE_BITMAP (scalar_t__*,int) ;
 int gpiod_set_array_value_cansleep (int,int ,int ,scalar_t__*) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 scalar_t__* values ;

__attribute__((used)) static void ts_nbus_reset_bus(struct ts_nbus *ts_nbus)
{
 DECLARE_BITMAP(values, 8);

 values[0] = 0;

 gpiod_set_array_value_cansleep(8, ts_nbus->data->desc,
           ts_nbus->data->info, values);
 gpiod_set_value_cansleep(ts_nbus->csn, 0);
 gpiod_set_value_cansleep(ts_nbus->strobe, 0);
 gpiod_set_value_cansleep(ts_nbus->ale, 0);
}
