
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_apb_clock_event_device {int timer; int ced; } ;


 int APBTMR_N_CONTROL ;
 int apbt_enable_int (int *) ;
 int apbt_writel (int *,int ,int ) ;
 int clockevents_register_device (int *) ;

void dw_apb_clockevent_register(struct dw_apb_clock_event_device *dw_ced)
{
 apbt_writel(&dw_ced->timer, 0, APBTMR_N_CONTROL);
 clockevents_register_device(&dw_ced->ced);
 apbt_enable_int(&dw_ced->timer);
}
