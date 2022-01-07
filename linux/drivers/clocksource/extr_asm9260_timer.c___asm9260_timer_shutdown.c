
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int BM_C0_EN ;
 scalar_t__ CLR_REG ;
 scalar_t__ HW_TCR ;
 TYPE_1__ priv ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void __asm9260_timer_shutdown(struct clock_event_device *evt)
{

 writel_relaxed(BM_C0_EN, priv.base + HW_TCR + CLR_REG);
}
