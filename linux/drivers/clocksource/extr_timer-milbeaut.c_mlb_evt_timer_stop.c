
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_of {int dummy; } ;


 scalar_t__ MLB_TMR_EVT_TMCSR_OFS ;
 int MLB_TMR_TMCSR_CNTE ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ timer_of_base (struct timer_of*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void mlb_evt_timer_stop(struct timer_of *to)
{
 u32 val = readl_relaxed(timer_of_base(to) + MLB_TMR_EVT_TMCSR_OFS);

 val &= ~MLB_TMR_TMCSR_CNTE;
 writel_relaxed(val, timer_of_base(to) + MLB_TMR_EVT_TMCSR_OFS);
}
