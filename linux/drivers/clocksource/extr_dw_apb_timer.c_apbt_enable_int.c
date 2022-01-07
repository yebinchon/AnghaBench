
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_apb_timer {int dummy; } ;


 int APBTMR_CONTROL_INT ;
 int APBTMR_N_CONTROL ;
 int APBTMR_N_EOI ;
 int apbt_readl (struct dw_apb_timer*,int ) ;
 int apbt_writel (struct dw_apb_timer*,int ,int ) ;

__attribute__((used)) static void apbt_enable_int(struct dw_apb_timer *timer)
{
 u32 ctrl = apbt_readl(timer, APBTMR_N_CONTROL);

 apbt_readl(timer, APBTMR_N_EOI);
 ctrl &= ~APBTMR_CONTROL_INT;
 apbt_writel(timer, ctrl, APBTMR_N_CONTROL);
}
