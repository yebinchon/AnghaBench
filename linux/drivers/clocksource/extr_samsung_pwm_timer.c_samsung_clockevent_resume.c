
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct clock_event_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ has_tint_cstat; } ;
struct TYPE_4__ {int event_id; scalar_t__ base; TYPE_1__ variant; int tdiv; int tscaler_div; } ;


 scalar_t__ REG_TINT_CSTAT ;
 TYPE_2__ pwm ;
 int samsung_timer_set_divisor (int,int ) ;
 int samsung_timer_set_prescale (int,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void samsung_clockevent_resume(struct clock_event_device *cev)
{
 samsung_timer_set_prescale(pwm.event_id, pwm.tscaler_div);
 samsung_timer_set_divisor(pwm.event_id, pwm.tdiv);

 if (pwm.variant.has_tint_cstat) {
  u32 mask = (1 << pwm.event_id);
  writel(mask | (mask << 5), pwm.base + REG_TINT_CSTAT);
 }
}
