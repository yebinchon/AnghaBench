
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evmap_signal {int events; } ;
struct event_base {int dummy; } ;


 int delete_all_in_dlist (int *) ;

__attribute__((used)) static int
evmap_signal_delete_all_iter_fn(struct event_base *base, int signum,
    struct evmap_signal *sig_info, void *arg)
{
 return delete_all_in_dlist(&sig_info->events);
}
