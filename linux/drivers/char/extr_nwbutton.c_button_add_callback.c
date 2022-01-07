
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* callback ) () ;int count; } ;


 int EINVAL ;
 int ENOMEM ;
 TYPE_1__* button_callback_list ;
 int callback_count ;

int button_add_callback (void (*callback) (void), int count)
{
 int lp = 0;
 if (callback_count == 32) {
  return -ENOMEM;
 }
 if (!callback) {
  return -EINVAL;
 }
 callback_count++;
 for (; (button_callback_list [lp].callback); lp++);
 button_callback_list [lp].callback = callback;
 button_callback_list [lp].count = count;
 return 0;
}
