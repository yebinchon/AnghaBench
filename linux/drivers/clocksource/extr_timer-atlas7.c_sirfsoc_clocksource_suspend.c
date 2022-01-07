
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;


 int SIRFSOC_TIMER_REG_CNT ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ sirfsoc_timer_base ;
 scalar_t__* sirfsoc_timer_reg_list ;
 int * sirfsoc_timer_reg_val ;

__attribute__((used)) static void sirfsoc_clocksource_suspend(struct clocksource *cs)
{
 int i;

 for (i = 0; i < SIRFSOC_TIMER_REG_CNT; i++)
  sirfsoc_timer_reg_val[i] = readl_relaxed(sirfsoc_timer_base + sirfsoc_timer_reg_list[i]);
}
