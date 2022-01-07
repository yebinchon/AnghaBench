
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* callback ) () ;scalar_t__ count; } ;


 int EINVAL ;
 TYPE_1__* button_callback_list ;
 int callback_count ;

int button_del_callback (void (*callback) (void))
{
 int lp = 31;
 if (!callback) {
  return -EINVAL;
 }
 while (lp >= 0) {
  if ((button_callback_list [lp].callback) == callback) {
   button_callback_list [lp].callback = ((void*)0);
   button_callback_list [lp].count = 0;
   callback_count--;
   return 0;
  }
  lp--;
 }
 return -EINVAL;
}
