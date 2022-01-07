
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;
 int sharpsl_bat ;

void sharpsl_battery_kick(void)
{
 schedule_delayed_work(&sharpsl_bat, msecs_to_jiffies(125));
}
