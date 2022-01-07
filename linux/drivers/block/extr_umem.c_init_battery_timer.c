
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 TYPE_1__ battery_timer ;
 int check_all_batteries ;
 scalar_t__ jiffies ;
 int timer_setup (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void init_battery_timer(void)
{
 timer_setup(&battery_timer, check_all_batteries, 0);
 battery_timer.expires = jiffies + (HZ * 60);
 add_timer(&battery_timer);
}
