
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ current; } ;


 scalar_t__ STCTRL_MAX ;
 int STCTRL_SHIFT ;
 TYPE_1__* SysTick ;
 int get_ticks () ;

uint32_t get_cycles(void)
{
  return (get_ticks() << STCTRL_SHIFT) + (STCTRL_MAX - SysTick->current);
}
