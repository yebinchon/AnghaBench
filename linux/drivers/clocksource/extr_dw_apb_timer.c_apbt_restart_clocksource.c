
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_apb_clocksource {int dummy; } ;
struct clocksource {int dummy; } ;


 struct dw_apb_clocksource* clocksource_to_dw_apb_clocksource (struct clocksource*) ;
 int dw_apb_clocksource_start (struct dw_apb_clocksource*) ;

__attribute__((used)) static void apbt_restart_clocksource(struct clocksource *cs)
{
 struct dw_apb_clocksource *dw_cs =
  clocksource_to_dw_apb_clocksource(cs);

 dw_apb_clocksource_start(dw_cs);
}
