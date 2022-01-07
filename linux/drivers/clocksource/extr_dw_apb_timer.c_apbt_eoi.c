
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_apb_timer {int dummy; } ;


 int APBTMR_N_EOI ;
 int apbt_readl_relaxed (struct dw_apb_timer*,int ) ;

__attribute__((used)) static void apbt_eoi(struct dw_apb_timer *timer)
{
 apbt_readl_relaxed(timer, APBTMR_N_EOI);
}
