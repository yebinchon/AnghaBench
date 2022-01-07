
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;


 int evmap_io_delete_all_iter_fn ;
 int evmap_io_foreach_fd (struct event_base*,int ,int *) ;
 int evmap_signal_delete_all_iter_fn ;
 int evmap_signal_foreach_signal (struct event_base*,int ,int *) ;

void
evmap_delete_all_(struct event_base *base)
{
 evmap_signal_foreach_signal(base, evmap_signal_delete_all_iter_fn, ((void*)0));
 evmap_io_foreach_fd(base, evmap_io_delete_all_iter_fn, ((void*)0));
}
