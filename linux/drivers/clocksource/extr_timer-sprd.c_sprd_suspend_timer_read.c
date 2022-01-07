
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int mask; } ;


 scalar_t__ TIMER_VALUE_SHDW_LO ;
 scalar_t__ readl_relaxed (scalar_t__) ;
 int suspend_to ;
 scalar_t__ timer_of_base (int *) ;

__attribute__((used)) static u64 sprd_suspend_timer_read(struct clocksource *cs)
{
 return ~(u64)readl_relaxed(timer_of_base(&suspend_to) +
       TIMER_VALUE_SHDW_LO) & cs->mask;
}
