
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct dw_apb_clocksource {int timer; } ;
struct clocksource {int dummy; } ;


 int APBTMR_N_CURRENT_VALUE ;
 int apbt_readl_relaxed (int *,int ) ;
 struct dw_apb_clocksource* clocksource_to_dw_apb_clocksource (struct clocksource*) ;

__attribute__((used)) static u64 __apbt_read_clocksource(struct clocksource *cs)
{
 u32 current_count;
 struct dw_apb_clocksource *dw_cs =
  clocksource_to_dw_apb_clocksource(cs);

 current_count = apbt_readl_relaxed(&dw_cs->timer,
     APBTMR_N_CURRENT_VALUE);

 return (u64)~current_count;
}
