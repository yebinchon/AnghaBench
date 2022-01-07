
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtimer_list {int entry; int * function; } ;


 int INIT_LIST_HEAD (int *) ;

void init_virt_timer(struct vtimer_list *timer)
{
 timer->function = ((void*)0);
 INIT_LIST_HEAD(&timer->entry);
}
