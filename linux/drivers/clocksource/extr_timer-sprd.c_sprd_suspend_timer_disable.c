
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 int sprd_timer_disable (int ) ;
 int suspend_to ;
 int timer_of_base (int *) ;

__attribute__((used)) static void sprd_suspend_timer_disable(struct clocksource *cs)
{
 sprd_timer_disable(timer_of_base(&suspend_to));
}
