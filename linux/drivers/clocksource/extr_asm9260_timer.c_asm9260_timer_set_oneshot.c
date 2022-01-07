
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int BM_MCR_RES_EN (int ) ;
 int BM_MCR_STOP_EN (int ) ;
 scalar_t__ HW_MCR ;
 scalar_t__ SET_REG ;
 int __asm9260_timer_shutdown (struct clock_event_device*) ;
 TYPE_1__ priv ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int asm9260_timer_set_oneshot(struct clock_event_device *evt)
{
 __asm9260_timer_shutdown(evt);


 writel_relaxed(BM_MCR_RES_EN(0) | BM_MCR_STOP_EN(0),
         priv.base + HW_MCR + SET_REG);
 return 0;
}
