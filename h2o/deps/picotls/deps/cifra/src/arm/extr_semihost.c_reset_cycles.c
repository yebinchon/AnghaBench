
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ctrl; scalar_t__ current; int reload; } ;


 int STCTRL_ENABLE ;
 int STCTRL_MAX ;
 int STCTRL_SYSCLOCK ;
 int STCTRL_TICKINT ;
 TYPE_1__* SysTick ;
 int get_ticks () ;
 int reset_ticks () ;

uint32_t reset_cycles(void)
{
  SysTick->reload = STCTRL_MAX;
  SysTick->ctrl = STCTRL_SYSCLOCK | STCTRL_TICKINT | STCTRL_ENABLE;
  SysTick->current = 0;
  reset_ticks();
  return get_ticks();
}
