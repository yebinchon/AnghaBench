
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 unsigned long BM_C0_EN ;
 scalar_t__ HW_MR0 ;
 scalar_t__ HW_TCR ;
 scalar_t__ SET_REG ;
 TYPE_1__ priv ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static int asm9260_timer_set_next_event(unsigned long delta,
      struct clock_event_device *evt)
{

 writel_relaxed(delta, priv.base + HW_MR0);

 writel_relaxed(BM_C0_EN, priv.base + HW_TCR + SET_REG);
 return 0;
}
