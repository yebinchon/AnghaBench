
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int freq; } ;
struct dw_apb_clocksource {TYPE_1__ timer; int cs; } ;


 int clocksource_register_hz (int *,int ) ;

void dw_apb_clocksource_register(struct dw_apb_clocksource *dw_cs)
{
 clocksource_register_hz(&dw_cs->cs, dw_cs->timer.freq);
}
