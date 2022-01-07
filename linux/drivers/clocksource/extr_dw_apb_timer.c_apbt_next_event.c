
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct dw_apb_clock_event_device {int timer; } ;
struct clock_event_device {int dummy; } ;


 unsigned long APBTMR_CONTROL_ENABLE ;
 int APBTMR_N_CONTROL ;
 int APBTMR_N_LOAD_COUNT ;
 unsigned long apbt_readl_relaxed (int *,int ) ;
 int apbt_writel_relaxed (int *,unsigned long,int ) ;
 struct dw_apb_clock_event_device* ced_to_dw_apb_ced (struct clock_event_device*) ;

__attribute__((used)) static int apbt_next_event(unsigned long delta,
      struct clock_event_device *evt)
{
 u32 ctrl;
 struct dw_apb_clock_event_device *dw_ced = ced_to_dw_apb_ced(evt);


 ctrl = apbt_readl_relaxed(&dw_ced->timer, APBTMR_N_CONTROL);
 ctrl &= ~APBTMR_CONTROL_ENABLE;
 apbt_writel_relaxed(&dw_ced->timer, ctrl, APBTMR_N_CONTROL);

 apbt_writel_relaxed(&dw_ced->timer, delta, APBTMR_N_LOAD_COUNT);
 ctrl |= APBTMR_CONTROL_ENABLE;
 apbt_writel_relaxed(&dw_ced->timer, ctrl, APBTMR_N_CONTROL);

 return 0;
}
