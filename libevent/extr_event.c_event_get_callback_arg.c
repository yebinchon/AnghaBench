
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {void* ev_arg; } ;


 int event_debug_assert_is_setup_ (struct event const*) ;

void *
event_get_callback_arg(const struct event *ev)
{
 event_debug_assert_is_setup_(ev);
 return ev->ev_arg;
}
