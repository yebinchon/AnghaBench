
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct clock_event_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ tmr_regs; } ;


 scalar_t__ KONA_GPTIMER_STCM0_OFFSET ;
 int KONA_GPTIMER_STCS_COMPARE_ENABLE_SHIFT ;
 scalar_t__ KONA_GPTIMER_STCS_OFFSET ;
 int kona_timer_get_counter (scalar_t__,int*,int*) ;
 int readl (scalar_t__) ;
 TYPE_1__ timers ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int kona_timer_set_next_event(unsigned long clc,
      struct clock_event_device *unused)
{
 uint32_t lsw, msw;
 uint32_t reg;
 int ret;

 ret = kona_timer_get_counter(timers.tmr_regs, &msw, &lsw);
 if (ret)
  return ret;


 writel(lsw + clc, timers.tmr_regs + KONA_GPTIMER_STCM0_OFFSET);


 reg = readl(timers.tmr_regs + KONA_GPTIMER_STCS_OFFSET);
 reg |= (1 << KONA_GPTIMER_STCS_COMPARE_ENABLE_SHIFT);
 writel(reg, timers.tmr_regs + KONA_GPTIMER_STCS_OFFSET);

 return 0;
}
