
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtimer_list {int dummy; } ;


 int __add_vtimer (struct vtimer_list*,int) ;

void add_virt_timer_periodic(struct vtimer_list *timer)
{
 __add_vtimer(timer, 1);
}
