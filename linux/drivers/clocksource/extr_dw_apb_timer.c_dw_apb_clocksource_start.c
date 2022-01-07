
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_apb_clocksource {int timer; } ;


 int APBTMR_CONTROL_ENABLE ;
 int APBTMR_CONTROL_INT ;
 int APBTMR_CONTROL_MODE_PERIODIC ;
 int APBTMR_N_CONTROL ;
 int APBTMR_N_LOAD_COUNT ;
 int apbt_readl (int *,int ) ;
 int apbt_writel (int *,int,int ) ;
 int dw_apb_clocksource_read (struct dw_apb_clocksource*) ;

void dw_apb_clocksource_start(struct dw_apb_clocksource *dw_cs)
{




 u32 ctrl = apbt_readl(&dw_cs->timer, APBTMR_N_CONTROL);

 ctrl &= ~APBTMR_CONTROL_ENABLE;
 apbt_writel(&dw_cs->timer, ctrl, APBTMR_N_CONTROL);
 apbt_writel(&dw_cs->timer, ~0, APBTMR_N_LOAD_COUNT);

 ctrl &= ~APBTMR_CONTROL_MODE_PERIODIC;
 ctrl |= (APBTMR_CONTROL_ENABLE | APBTMR_CONTROL_INT);
 apbt_writel(&dw_cs->timer, ctrl, APBTMR_N_CONTROL);

 dw_apb_clocksource_read(dw_cs);
}
