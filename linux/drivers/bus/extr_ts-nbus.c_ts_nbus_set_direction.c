
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ts_nbus {TYPE_1__* data; } ;
struct TYPE_2__ {int * desc; } ;


 int TS_NBUS_DIRECTION_IN ;
 int gpiod_direction_input (int ) ;
 int gpiod_direction_output (int ,int) ;

__attribute__((used)) static void ts_nbus_set_direction(struct ts_nbus *ts_nbus, int direction)
{
 int i;

 for (i = 0; i < 8; i++) {
  if (direction == TS_NBUS_DIRECTION_IN)
   gpiod_direction_input(ts_nbus->data->desc[i]);
  else


   gpiod_direction_output(ts_nbus->data->desc[i], 1);
 }
}
