
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int spu_evnt_swap ;
 int timer_setup (TYPE_1__*,int ,int ) ;
 TYPE_1__ timer_spu_event_swap ;

__attribute__((used)) static void start_spu_event_swap(void)
{
 timer_setup(&timer_spu_event_swap, spu_evnt_swap, 0);
 timer_spu_event_swap.expires = jiffies + HZ / 25;
 add_timer(&timer_spu_event_swap);
}
