
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;


 scalar_t__ TIM_DIER ;
 scalar_t__ timer_of_base (struct timer_of*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void stm32_clock_event_disable(struct timer_of *to)
{
 writel_relaxed(0, timer_of_base(to) + TIM_DIER);
}
