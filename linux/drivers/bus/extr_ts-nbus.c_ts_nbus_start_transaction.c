
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts_nbus {int strobe; } ;


 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static void ts_nbus_start_transaction(struct ts_nbus *ts_nbus)
{
 gpiod_set_value_cansleep(ts_nbus->strobe, 1);
}
