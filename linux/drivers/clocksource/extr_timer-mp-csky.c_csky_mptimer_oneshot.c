
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int PTIM_CTLR ;
 int mtcr (int ,int) ;

__attribute__((used)) static int csky_mptimer_oneshot(struct clock_event_device *ce)
{
 mtcr(PTIM_CTLR, 1);

 return 0;
}
