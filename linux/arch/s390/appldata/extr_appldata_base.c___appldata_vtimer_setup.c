
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int expires; } ;





 int TOD_MICRO ;
 int add_virt_timer_periodic (TYPE_1__*) ;
 scalar_t__ appldata_interval ;
 TYPE_1__ appldata_timer ;
 int appldata_timer_active ;
 int del_virt_timer (TYPE_1__*) ;
 int mod_virt_timer_periodic (TYPE_1__*,int) ;

__attribute__((used)) static void __appldata_vtimer_setup(int cmd)
{
 u64 timer_interval = (u64) appldata_interval * 1000 * TOD_MICRO;

 switch (cmd) {
 case 130:
  if (appldata_timer_active)
   break;
  appldata_timer.expires = timer_interval;
  add_virt_timer_periodic(&appldata_timer);
  appldata_timer_active = 1;
  break;
 case 129:
  del_virt_timer(&appldata_timer);
  if (!appldata_timer_active)
   break;
  appldata_timer_active = 0;
  break;
 case 128:
  if (!appldata_timer_active)
   break;
  mod_virt_timer_periodic(&appldata_timer, timer_interval);
 }
}
