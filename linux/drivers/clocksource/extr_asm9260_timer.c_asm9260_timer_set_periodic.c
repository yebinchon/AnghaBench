
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int ticks_per_jiffy; scalar_t__ base; } ;


 int BM_C0_EN ;
 int BM_MCR_RES_EN (int ) ;
 int BM_MCR_STOP_EN (int ) ;
 scalar_t__ CLR_REG ;
 scalar_t__ HW_MCR ;
 scalar_t__ HW_MR0 ;
 scalar_t__ HW_TCR ;
 scalar_t__ SET_REG ;
 int __asm9260_timer_shutdown (struct clock_event_device*) ;
 TYPE_1__ priv ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int asm9260_timer_set_periodic(struct clock_event_device *evt)
{
 __asm9260_timer_shutdown(evt);


 writel_relaxed(BM_MCR_RES_EN(0) | BM_MCR_STOP_EN(0),
         priv.base + HW_MCR + CLR_REG);

 writel_relaxed(priv.ticks_per_jiffy, priv.base + HW_MR0);

 writel_relaxed(BM_C0_EN, priv.base + HW_TCR + SET_REG);
 return 0;
}
