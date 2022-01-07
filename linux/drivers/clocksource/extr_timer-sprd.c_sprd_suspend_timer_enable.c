
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 int TIMER_CTL_PERIOD_MODE ;
 int TIMER_VALUE_LO_MASK ;
 int sprd_timer_enable (int ,int ) ;
 int sprd_timer_update_counter (int ,int ) ;
 int suspend_to ;
 int timer_of_base (int *) ;

__attribute__((used)) static int sprd_suspend_timer_enable(struct clocksource *cs)
{
 sprd_timer_update_counter(timer_of_base(&suspend_to),
      TIMER_VALUE_LO_MASK);
 sprd_timer_enable(timer_of_base(&suspend_to), TIMER_CTL_PERIOD_MODE);

 return 0;
}
