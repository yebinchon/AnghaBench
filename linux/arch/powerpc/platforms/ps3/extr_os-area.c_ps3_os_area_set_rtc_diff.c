
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ rtc_diff; } ;


 int os_area_queue_work () ;
 TYPE_1__ saved_params ;

void ps3_os_area_set_rtc_diff(u64 rtc_diff)
{
 if (saved_params.rtc_diff != rtc_diff) {
  saved_params.rtc_diff = rtc_diff;
  os_area_queue_work();
 }
}
