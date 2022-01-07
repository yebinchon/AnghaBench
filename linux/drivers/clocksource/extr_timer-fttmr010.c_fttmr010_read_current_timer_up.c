
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ TIMER2_COUNT ;
 TYPE_1__* local_fttmr ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static unsigned long fttmr010_read_current_timer_up(void)
{
 return readl(local_fttmr->base + TIMER2_COUNT);
}
