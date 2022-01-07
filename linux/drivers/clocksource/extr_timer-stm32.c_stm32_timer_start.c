
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;


 scalar_t__ TIM_CR1 ;
 int TIM_CR1_CEN ;
 int TIM_CR1_UDIS ;
 scalar_t__ timer_of_base (struct timer_of*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void stm32_timer_start(struct timer_of *to)
{
 writel_relaxed(TIM_CR1_UDIS | TIM_CR1_CEN, timer_of_base(to) + TIM_CR1);
}
