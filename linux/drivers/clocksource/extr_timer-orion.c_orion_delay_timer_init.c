
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long freq; } ;


 TYPE_1__ orion_delay_timer ;
 int register_current_timer_delay (TYPE_1__*) ;

__attribute__((used)) static void orion_delay_timer_init(unsigned long rate)
{
 orion_delay_timer.freq = rate;
 register_current_timer_delay(&orion_delay_timer);
}
